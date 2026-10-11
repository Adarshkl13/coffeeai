module GitContent
  LESSONS = {
    1 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Introduction to Git</h1>
        </div>
        <p class="lc-lead">Git is a <strong>version control system</strong> (a tool that keeps a history of every change to your files). It saves snapshots of your project. You can see what changed and who changed it. You can also go back when something breaks. Almost every software team in the world uses Git.</p>

        <div class="lc-card">
          <h3>Why Version Control?</h3>
          <p>Without Git, people keep copies like <code>project-final</code>, <code>project-final-v2</code> and <code>project-final-REAL</code>. Nobody knows which copy is correct. Nobody knows what changed between them. Git gives you a clean history of <strong>commits</strong> (saved snapshots) instead.</p>
          <ul class="lc-list">
            <li><strong>History</strong>: every commit is a saved snapshot. It has a message, an author and a date.</li>
            <li><strong>Safety</strong>: you can find a bad change and undo it.</li>
            <li><strong>Teamwork</strong>: many people can work on the same project at the same time. They use branches (separate lines of work) to do this.</li>
            <li><strong>Local-first</strong>: the full history is stored on your own computer. So Git works without internet.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Git vs GitHub</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Git</th><th>GitHub</th></tr></thead>
            <tbody>
              <tr><td>What it is</td><td>A program you install on your computer</td><td>A website that stores Git repositories (project folders tracked by Git) online</td></tr>
              <tr><td>Works offline?</td><td>Yes</td><td>No</td></tr>
              <tr><td>Main job</td><td>Record history, branch, merge</td><td>Share code, pull requests, issues, Actions</td></tr>
              <tr><td>Alternatives</td><td>(Mercurial, SVN: rarely used now)</td><td>GitLab, Bitbucket</td></tr>
            </tbody>
          </table>
          <p>This course teaches Git itself. The GitHub course comes after it.</p>
        </div>

        <div class="lc-card">
          <h3>Install and Check Git</h3>
          <ul class="lc-list">
            <li><strong>Windows:</strong> install <em>Git for Windows</em> from git-scm.com (or run <code>winget install --id Git.Git -e</code>). It comes with <strong>Git Bash</strong> (a terminal program). Use it for this course.</li>
            <li><strong>macOS:</strong> run <code>xcode-select --install</code>, or <code>brew install git</code> for the newest version.</li>
            <li><strong>Ubuntu / Debian:</strong> <code>sudo apt install git</code></li>
          </ul>
          <div class="lc-code-block"><pre><code>$ git --version
        git version 2.55.0</code></pre></div>
          <p>Any recent version (2.40 or newer) works for this course. On Windows, the line ends with something like <code>.windows.1</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Your First Two Commits</h3>
          <p>All commands in this course run in a Bash-style terminal. Use Terminal on macOS/Linux, or Git Bash on Windows. Lines that start with <code>$</code> are what you type. The other lines are what Git prints. Make an empty folder and <code>cd</code> into it. Then type:</p>
          <div class="lc-code-block"><pre><code>$ git init
        Initialized empty Git repository in /home/asha/chai-menu/.git/
        $ echo &quot;Masala chai - 20&quot; &gt; menu.txt
        $ git add menu.txt
        $ git commit -m &quot;Add first menu item&quot;
        [main (root-commit) bed42d6] Add first menu item
         1 file changed, 1 insertion(+)
         create mode 100644 menu.txt
        $ echo &quot;Ginger chai - 25&quot; &gt;&gt; menu.txt
        $ git commit -am &quot;Add ginger chai&quot;
        [main 407a46c] Add ginger chai
         1 file changed, 1 insertion(+)
        $ git log --oneline
        407a46c Add ginger chai
        bed42d6 Add first menu item
        $ git show HEAD --stat --oneline
        407a46c Add ginger chai
         menu.txt | 1 +
         1 file changed, 1 insertion(+)</code></pre></div>
          <p>What happened:</p>
          <ul class="lc-list">
            <li><code>git init</code> turned the folder into a repository (a folder that Git tracks).</li>
            <li><code>git add</code> chose which change to save. <code>git commit</code> saved a snapshot with a message.</li>
            <li><code>git log --oneline</code> lists the snapshots, newest first. <code>407a46c</code> is the short <strong>commit hash</strong>. This is the commit's unique ID.</li>
          </ul>
          <p><strong>Your hashes will be different.</strong> Git makes a hash from the content, your name, your email and the exact time. So only the messages and file names will match ours. (Paths such as <code>/home/asha/chai-menu</code> will also show your own folder.)</p>
        </div>

        <div class="lc-card">
          <h3>How Git Thinks: Snapshots</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">Edit files<small>working tree</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">git add<small>choose changes</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">git commit<small>save snapshot</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">git log<small>see history</small></div>
          </div>
          <p>Each commit points to the commit before it. So the history forms a chain. You will learn each step of this loop in detail in lessons 3–8.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking Git and GitHub are the same thing. Git works fine with no internet and no account.</li>
            <li>Running Git commands in the wrong folder. Always check your folder with <code>pwd</code> first.</li>
            <li>Using Windows Command Prompt with commands like <code>echo "text" &gt;&gt; file</code>. They behave differently there. Use Git Bash to follow the lessons exactly.</li>
            <li>Expecting your hashes to match the lesson. They never will, and that is normal.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Install Git and run <code>git --version</code>.</li>
            <li>Create a folder called <code>chai-menu</code>, <code>cd</code> into it and repeat the walkthrough above.</li>
            <li>Add a third line (for example <code>Lemon tea - 15</code>) and commit it with the message <code>Add lemon tea</code>.</li>
            <li>Run <code>git log --oneline</code>. You should see <strong>three</strong> commits, newest at the top.</li>
          </ol>
          <p>Note: Git may show the message "Please tell me who you are". If so, go to the next lesson and set your name and email first.</p>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>A commit is like a save point in a game. Make many useful save points. Then it is easy to go back.</p></div>
      HTML
    },

    2 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Installing and Configuring Git</h1>
        </div>
        <p class="lc-lead">Git writes your <strong>name and email into every commit</strong>. Set them once on each computer. Also set a few useful defaults. Then Git is ready for daily work.</p>

        <div class="lc-card">
          <h3>Three Levels of Configuration</h3>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Flag</th><th>File</th><th>Applies to</th></tr></thead>
            <tbody>
              <tr><td>System</td><td><code>--system</code></td><td>Git's install folder</td><td>Every user on the computer</td></tr>
              <tr><td>Global</td><td><code>--global</code></td><td><code>~/.gitconfig</code></td><td>All your repositories</td></tr>
              <tr><td>Local</td><td>(none)</td><td><code>.git/config</code></td><td>Only the current repository</td></tr>
            </tbody>
          </table>
          <p>The most specific level wins. A <strong>local</strong> setting replaces a global one. A global setting replaces the system one.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: One-Time Setup</h3>
          <div class="lc-code-block"><pre><code>$ git config --global user.name &quot;Asha Rao&quot;
        $ git config --global user.email &quot;asha@example.com&quot;
        $ git config --global init.defaultBranch main
        $ git config --global core.editor &quot;code --wait&quot;
        $ git config --global alias.st &quot;status -sb&quot;
        $ git config --global alias.lg &quot;log --oneline --graph --all&quot;
        $ git config --global --list
        user.name=Asha Rao
        user.email=asha@example.com
        init.defaultbranch=main
        core.editor=code --wait
        alias.st=status -sb
        alias.lg=log --oneline --graph --all
        $ git config user.name
        Asha Rao</code></pre></div>
          <ul class="lc-list">
            <li><code>user.name</code> and <code>user.email</code>: who you are. Use the same email as your GitHub account. Then your commits link to your profile.</li>
            <li><code>init.defaultBranch main</code>: new repositories start on a branch called <code>main</code> (the modern standard).</li>
            <li><code>core.editor</code>: the editor Git opens for commit messages. <code>code --wait</code> is VS Code. Use <code>nano</code> if you want a simple terminal editor.</li>
            <li><code>alias.st</code> / <code>alias.lg</code>: your own shortcuts (aliases). <code>git st</code> now runs <code>git status -sb</code>.</li>
          </ul>
          <p>See that <code>--list</code> prints keys in lowercase (<code>init.defaultbranch</code>). Key names are not case-sensitive.</p>
        </div>

        <div class="lc-card">
          <h3>Where the Settings Live</h3>
          <p>Git stores global settings in a plain text file in your home folder:</p>
          <div class="lc-code-block"><pre><code>$ cat ~/.gitconfig
        [user]
        	name = Asha Rao
        	email = asha@example.com
        [init]
        	defaultBranch = main
        [core]
        	editor = code --wait
        [alias]
        	st = status -sb
        	lg = log --oneline --graph --all</code></pre></div>
          <p>You can edit this file by hand. But the <code>git config</code> command is safer. It never breaks the format.</p>
        </div>

        <div class="lc-card">
          <h3>Overriding a Setting for One Repository</h3>
          <p>Say you use a personal email everywhere. But you must use your company email for an office project. Go into that project's folder. Run <code>git config</code> <em>without</em> <code>--global</code>:</p>
          <div class="lc-code-block"><pre><code>$ git config user.email &quot;asha.rao@company.com&quot;
        $ git config user.email
        asha.rao@company.com
        $ git config --show-origin user.email
        file:.git/config	asha.rao@company.com
        $ cd ~ &amp;&amp; git config user.email
        asha@example.com</code></pre></div>
          <p><code>--show-origin</code> tells you which file a value came from. This is very useful when a setting is not what you expect. Outside the repository (<code>cd ~</code>), Git still uses the global email.</p>
        </div>

        <div class="lc-card">
          <h3>Using an Alias</h3>
          <div class="lc-code-block"><pre><code>$ git st
        ## No commits yet on main
        ?? notes.txt</code></pre></div>
          <p>The short status format shows the branch on the first line. Then it shows one line for each file. <code>??</code> means "untracked" (Git is not tracking the file yet). You will learn all these codes in lesson 4.</p>
          <p>Newer Git (2.46+) also accepts the form <code>git config set --global user.name "Asha Rao"</code> and <code>git config list</code>. The classic form in this lesson still works. Most tutorials show the classic form.</p>
        </div>

        <div class="lc-card">
          <h3>Line Endings: Windows vs macOS/Linux</h3>
          <p>Text files end each line with hidden characters. Windows uses <strong>CRLF</strong> (<code>\r\n</code>). macOS and Linux use <strong>LF</strong> (<code>\n</code>). A team may mix them. Then every line of a file can look "changed" in a diff (a list of changes), even when nobody edited it. The fix: store <strong>LF inside the repository</strong>. Let Git convert the endings when it checks out files (writes them to your folder).</p>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>Where</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>* text=auto</code> in <code>.gitattributes</code></td><td>Committed file in the repo (best)</td><td>For every text file, Git stores LF in the repository. It works for everyone who clones the repo, whatever their own settings are.</td></tr>
              <tr><td><code>git config --global core.autocrlf true</code></td><td>Your Windows computer</td><td>Commit LF, check out CRLF (the Git for Windows default)</td></tr>
              <tr><td><code>git config --global core.autocrlf input</code></td><td>Your macOS/Linux computer</td><td>Commit LF, never add CRLF on checkout</td></tr>
            </tbody>
          </table>
          <p>Here, a file has Windows line endings. The repository has a one-line <code>.gitattributes</code>:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;* text=auto&quot; &gt; .gitattributes
        $ printf &#39;Masala chai - 20\r\nGinger chai - 25\r\n&#39; &gt; menu.txt
        $ git add .gitattributes menu.txt
        warning: in the working copy of &#39;menu.txt&#39;, CRLF will be replaced by LF the next time Git touches it
        $ git ls-files --eol
        i/lf    w/lf    attr/text=auto        	.gitattributes
        i/lf    w/crlf  attr/text=auto        	menu.txt
        $ git commit -m &quot;Normalise line endings&quot;
        [main (root-commit) 26649bf] Normalise line endings
         2 files changed, 3 insertions(+)
         create mode 100644 .gitattributes
         create mode 100644 menu.txt
        $ git ls-files --eol menu.txt
        i/lf    w/crlf  attr/text=auto        	menu.txt</code></pre></div>
          <ul class="lc-list">
            <li>The warning is normal: Git will store <code>menu.txt</code> with LF.</li>
            <li><code>git ls-files --eol</code> shows each file in the index (<code>i/</code>) and in the working tree (<code>w/</code>). <code>i/lf</code> means the committed copy uses LF. Your file on disk (<code>w/crlf</code>) still has CRLF. It keeps CRLF until Git checks it out again.</li>
          </ul>
          <p>Add <code>.gitattributes</code> as one of the first files in every new project. You can also set a type for some files. For example: <code>*.sh text eol=lf</code> (shell scripts must use LF) or <code>*.png binary</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>--global</code> the first time. Then the name is set for only one repository.</li>
            <li>Using an email that is not on your GitHub account. Your commits then show a grey avatar with no link.</li>
            <li>Leaving out the quotes: <code>git config --global user.name Asha Rao</code> saves only <code>Asha</code>, and shows no error. Check with <code>git config user.name</code>.</li>
            <li>Setting <code>core.editor "code"</code> without <code>--wait</code>. Git does not wait for you to finish typing. It stops the commit because the message is empty.</li>
            <li>Having no <code>.gitattributes</code> in a team with Windows and Mac users. Whole files then show as changed, only because of CRLF vs LF.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Set your real name and email globally, and set <code>init.defaultBranch</code> to <code>main</code>.</li>
            <li>Create an alias <code>lg</code> for <code>log --oneline --graph --all</code>.</li>
            <li>Run <code>git config --global --list</code> and check every value.</li>
            <li>In any repository, run <code>git config --show-origin user.email</code>. Which file did the value come from?</li>
            <li>In a test repository, add a <code>.gitattributes</code> containing <code>* text=auto</code>, commit it, and run <code>git ls-files --eol</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Did you commit with the wrong email? First fix the config. Then fix the last commit's author with <code>git commit --amend --reset-author --no-edit</code>. Do this only if you have not pushed it yet.</p></div>
      HTML
    },

    3 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Creating a Repository</h1>
        </div>
        <p class="lc-lead">A <strong>repository</strong> (repo) is a project folder that Git tracks. <code>git init</code> creates one. It adds a hidden <code>.git</code> folder. Git stores every commit, branch and setting in this folder.</p>

        <div class="lc-card">
          <h3>Two Ways to Get a Repository</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Use when</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td><code>git init</code></td><td>You start a new project (or a folder you already have does not use Git yet)</td><td>This lesson</td></tr>
              <tr><td><code>git clone &lt;url&gt;</code></td><td>The project already exists on GitHub or another server</td><td>Lesson 19</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: git init</h3>
          <p>Create a folder <code>chai-menu</code> and <code>cd</code> into it. Then run:</p>
          <div class="lc-code-block"><pre><code>$ git init
        Initialized empty Git repository in /home/asha/chai-menu/.git/
        $ ls -A
        .git
        $ ls -C .git
        HEAD		description	info		refs
        config		hooks		objects
        $ cat .git/HEAD
        ref: refs/heads/main
        $ git status
        On branch main

        No commits yet

        nothing to commit (create/copy files and use &quot;git add&quot; to track)</code></pre></div>
          <ul class="lc-list">
            <li><code>ls -A</code> shows hidden files. The only new thing is <code>.git</code>.</li>
            <li><code>objects/</code> stores your file contents and commits. <code>refs/</code> stores branches and tags. <code>config</code> is the local configuration from lesson 2.</li>
            <li><code>HEAD</code> is a pointer (a marker) to the branch you are on. Right now it points to <code>main</code>. This is true even though <code>main</code> has no commits yet.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: The First Commit</h3>
          <div class="lc-code-block"><pre><code>$ echo &quot;# Chai Menu&quot; &gt; README.md
        $ git status
        On branch main

        No commits yet

        Untracked files:
          (use &quot;git add &lt;file&gt;...&quot; to include in what will be committed)
        	README.md

        nothing added to commit but untracked files present (use &quot;git add&quot; to track)
        $ git add README.md
        $ git commit -m &quot;Add README&quot;
        [main (root-commit) c0f855c] Add README
         1 file changed, 1 insertion(+)
         create mode 100644 README.md
        $ git status
        On branch main
        nothing to commit, working tree clean</code></pre></div>
          <p>The commit output tells you a lot. It shows the branch (<code>main</code>). It shows this is the <strong>root-commit</strong> (the first one, with no parent). It also shows the short hash, the message, and a summary of the changes. <code>create mode 100644</code> means Git added a new, normal file (not a program you can run).</p>
          <p>"working tree clean" means everything is saved. You want to see this before you switch tasks.</p>
        </div>

        <div class="lc-card">
          <h3>Where Is the Repository? (and a Classic Mistake)</h3>
          <p>Git commands work from any subfolder. Git looks in each parent folder until it finds <code>.git</code>. But if you run <code>git init</code> again inside a subfolder, you get a <em>second</em> repository inside the first. You almost never want this:</p>
          <div class="lc-code-block"><pre><code>$ mkdir src &amp;&amp; cd src
        $ git rev-parse --show-toplevel
        /home/asha/chai-menu
        $ git init
        Initialized empty Git repository in /home/asha/chai-menu/src/.git/</code></pre></div>
          <p><code>git rev-parse --show-toplevel</code> printed the real project root (top folder). But <code>git init</code> still made a new repo in <code>src/</code>. To fix it, delete the inner <code>.git</code>: <code>rm -rf .git</code> (run it inside <code>src</code> only!). Outside any repository, Git tells you clearly:</p>
          <div class="lc-code-block"><pre><code>$ git status
        fatal: not a git repository (or any of the parent directories): .git</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Running <code>git init</code> in your home folder. Git would then try to track your whole user account. If you did this, remove <code>~/.git</code>.</li>
            <li>Creating a repository inside another one by running <code>git init</code> in subfolders.</li>
            <li>Editing or deleting files inside <code>.git</code> by hand. Deleting <code>.git</code> deletes your entire history.</li>
            <li>Putting a repository inside a cloud-sync folder (OneDrive, Google Drive). The sync tool can damage <code>.git</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a new folder <code>notes</code> and run <code>git init</code>.</li>
            <li>Run <code>cat .git/HEAD</code>. Which branch does it point to?</li>
            <li>Create <code>README.md</code>, then run <code>git status</code>, <code>git add README.md</code>, <code>git commit -m "Add README"</code>.</li>
            <li>Make a subfolder, <code>cd</code> into it and run <code>git status</code>. It still works, because Git finds the parent <code>.git</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>One project = one repository = one <code>.git</code> folder at the project root. Does <code>git status</code> show files you do not recognise? Run <code>git rev-parse --show-toplevel</code>. It shows which repository you are really in.</p></div>
      HTML
    },

    4 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Working Tree, Staging Area and Repository</h1>
        </div>
        <p class="lc-lead">Every change in Git is in one of three places. Learn these, and <code>git status</code> becomes easy to read. You will run it more than any other command.</p>

        <div class="lc-card">
          <h3>The Three Areas</h3>
          <svg viewBox="0 0 640 190" width="100%" style="max-width:640px" role="img" aria-label="Working tree to staging area with git add, staging area to repository with git commit">
            <rect x="10" y="30" width="170" height="80" rx="10" fill="var(--bg3)" stroke="#f97316"/>
            <text x="95" y="65" text-anchor="middle" fill="var(--txt)" font-size="15" font-weight="600">Working tree</text>
            <text x="95" y="88" text-anchor="middle" fill="var(--txt2)" font-size="12">files you edit</text>
            <rect x="235" y="30" width="170" height="80" rx="10" fill="var(--bg3)" stroke="#9d5cf6"/>
            <text x="320" y="65" text-anchor="middle" fill="var(--txt)" font-size="15" font-weight="600">Staging area</text>
            <text x="320" y="88" text-anchor="middle" fill="var(--txt2)" font-size="12">next commit (index)</text>
            <rect x="460" y="30" width="170" height="80" rx="10" fill="var(--bg3)" stroke="#22c55e"/>
            <text x="545" y="65" text-anchor="middle" fill="var(--txt)" font-size="15" font-weight="600">Repository</text>
            <text x="545" y="88" text-anchor="middle" fill="var(--txt2)" font-size="12">saved commits (.git)</text>
            <line x1="182" y1="55" x2="230" y2="55" stroke="var(--txt2)" stroke-width="2" marker-end="url(#g4a)"/>
            <text x="206" y="47" text-anchor="middle" fill="var(--txt2)" font-size="11">git add</text>
            <line x1="407" y1="55" x2="455" y2="55" stroke="var(--txt2)" stroke-width="2" marker-end="url(#g4a)"/>
            <text x="431" y="47" text-anchor="middle" fill="var(--txt2)" font-size="11">git commit</text>
            <path d="M320 112 Q 208 170 95 112" fill="none" stroke="var(--txt3)" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#g4a)"/>
            <text x="208" y="168" text-anchor="middle" fill="var(--txt3)" font-size="11">git restore --staged (unstage)</text>
            <defs><marker id="g4a" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto"><path d="M0 0 L10 5 L0 10 z" fill="var(--txt2)"/></marker></defs>
          </svg>
          <ul class="lc-list">
            <li><strong>Working tree</strong>: the real files on your disk.</li>
            <li><strong>Staging area</strong> (also called the <em>index</em>): a draft of your next commit. Only staged changes go into the commit.</li>
            <li><strong>Repository</strong>: the commits saved inside <code>.git</code>.</li>
          </ul>
          <p>The staging area lets you commit <em>part</em> of your work. For example, fix two bugs. Then save them as two separate, clear commits.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Watching a Change Move</h3>
          <p>Start with a repository that has one committed file, <code>menu.txt</code>. Change it and create a new file:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;Elaichi chai - 25&quot; &gt;&gt; menu.txt
        $ echo &quot;Samosa - 15&quot; &gt; snacks.txt
        $ git status
        On branch main
        Changes not staged for commit:
          (use &quot;git add &lt;file&gt;...&quot; to update what will be committed)
          (use &quot;git restore &lt;file&gt;...&quot; to discard changes in working directory)
        	modified:   menu.txt

        Untracked files:
          (use &quot;git add &lt;file&gt;...&quot; to include in what will be committed)
        	snacks.txt

        no changes added to commit (use &quot;git add&quot; and/or &quot;git commit -a&quot;)</code></pre></div>
          <p>There are two sections. <strong>Changes not staged</strong> means a tracked file was changed. <strong>Untracked files</strong> means Git has never seen <code>snacks.txt</code>. Now stage only the menu change:</p>
          <div class="lc-code-block"><pre><code>$ git add menu.txt
        $ git status
        On branch main
        Changes to be committed:
          (use &quot;git restore --staged &lt;file&gt;...&quot; to unstage)
        	modified:   menu.txt

        Untracked files:
          (use &quot;git add &lt;file&gt;...&quot; to include in what will be committed)
        	snacks.txt</code></pre></div>
          <p>Now edit <code>menu.txt</code> <em>again</em> after staging it:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;Lemon tea - 20&quot; &gt;&gt; menu.txt
        $ git status
        On branch main
        Changes to be committed:
          (use &quot;git restore --staged &lt;file&gt;...&quot; to unstage)
        	modified:   menu.txt

        Changes not staged for commit:
          (use &quot;git add &lt;file&gt;...&quot; to update what will be committed)
          (use &quot;git restore &lt;file&gt;...&quot; to discard changes in working directory)
        	modified:   menu.txt

        Untracked files:
          (use &quot;git add &lt;file&gt;...&quot; to include in what will be committed)
        	snacks.txt

        $ git status -s
        MM menu.txt
        ?? snacks.txt</code></pre></div>
          <p><code>menu.txt</code> shows up twice! The staged copy has the Elaichi line. The working copy also has Lemon tea. If you commit now, Git saves only the staged version. Run <code>git add menu.txt</code> again to stage the newest version.</p>
        </div>

        <div class="lc-card">
          <h3>Reading Short Status (git status -s)</h3>
          <p>Each line has two columns: <strong>left = staging area</strong>, <strong>right = working tree</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>??</code></td><td>Untracked: new file Git is not tracking yet</td></tr>
              <tr><td><code>A&nbsp;</code></td><td>Added: new file staged</td></tr>
              <tr><td><code>&nbsp;M</code></td><td>Modified in working tree, not staged</td></tr>
              <tr><td><code>M&nbsp;</code></td><td>Modified and staged</td></tr>
              <tr><td><code>MM</code></td><td>Staged, then modified again</td></tr>
              <tr><td><code>D&nbsp;</code> / <code>&nbsp;D</code></td><td>Deleted (staged / not staged)</td></tr>
              <tr><td><code>UU</code></td><td>Merge conflict: both sides changed it (lesson 14)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking <code>git add</code> saves your work for good. It only stages it. Nothing is in history until you commit.</li>
            <li>Editing a file after <code>git add</code> and forgetting to add it again (the <code>MM</code> case).</li>
            <li>Ignoring the hints in <code>git status</code>. Git prints the exact command you need, such as <code>git restore --staged &lt;file&gt;</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In your <code>chai-menu</code> repo, change <code>menu.txt</code> and create <code>snacks.txt</code>.</li>
            <li>Guess the output of <code>git status -s</code>, then run it. Were you right?</li>
            <li>Stage only <code>menu.txt</code>, edit it once more, and run <code>git status -s</code>. You should see <code>MM menu.txt</code>.</li>
            <li>Stage everything and commit it with <code>git commit -m "Add snacks and update menu"</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Make "<code>git status</code> before every <code>add</code> and every <code>commit</code>" a habit. It takes one second. It stops most beginner mistakes.</p></div>
      HTML
    },

    5 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Staging and Committing Changes</h1>
        </div>
        <p class="lc-lead">A good commit is <strong>small, focused and well described</strong>. <code>git add</code> lets you pick exactly what goes in. <code>git commit</code> saves it with a message that explains <em>why</em>.</p>

        <div class="lc-card">
          <h3>Ways to Stage</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Stages</th></tr></thead>
            <tbody>
              <tr><td><code>git add menu.txt</code></td><td>One file</td></tr>
              <tr><td><code>git add src/</code></td><td>Everything inside a folder</td></tr>
              <tr><td><code>git add .</code></td><td>All changes in the current folder and below (new, modified, deleted)</td></tr>
              <tr><td><code>git add -p</code></td><td>Asks you about each hunk (block of changed lines): <code>y</code> = stage, <code>n</code> = skip. Great for splitting work into two commits</td></tr>
              <tr><td><code>git restore --staged file</code></td><td>Removes a file from staging (keeps your edits)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Stage, Then Un-stage One File</h3>
          <p>You changed three things. But only two belong together:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;Samosa - 15&quot; &gt; snacks.txt
        $ echo &quot;Open 7am-9pm&quot; &gt; hours.txt
        $ echo &quot;Ginger chai - 25&quot; &gt;&gt; menu.txt
        $ git add .
        $ git status -s
        A  hours.txt
        M  menu.txt
        A  snacks.txt
        $ git restore --staged hours.txt
        $ git status -s
        M  menu.txt
        A  snacks.txt
        ?? hours.txt</code></pre></div>
          <p><code>git add .</code> staged all three. <code>git restore --staged</code> took <code>hours.txt</code> back out. Now commit the two related changes:</p>
          <div class="lc-code-block"><pre><code>$ git commit -m &quot;Add snacks and ginger chai&quot;
        [main f6e0edb] Add snacks and ginger chai
         2 files changed, 2 insertions(+)
         create mode 100644 snacks.txt
        $ git status -s
        ?? hours.txt</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Writing Good Commit Messages</h3>
          <ul class="lc-list">
            <li><strong>Summary line:</strong> about 50 characters. Write it as a command (<em>imperative mood</em>): "Add login page", not "Added login page" or "adding stuff".</li>
            <li>A quick test: the summary should finish the sentence "If applied, this commit will ___".</li>
            <li><strong>Body (optional):</strong> add a blank line. Then explain <em>why</em> you made the change. Keep lines to about 72 characters.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Weak message</th><th>Better message</th></tr></thead>
            <tbody>
              <tr><td><code>fix</code></td><td><code>Fix crash when cart is empty</code></td></tr>
              <tr><td><code>changes</code></td><td><code>Add GST to invoice total</code></td></tr>
              <tr><td><code>updated files</code></td><td><code>Rename user_id column to customer_id</code></td></tr>
            </tbody>
          </table>
          <p>Each <code>-m</code> becomes a paragraph. So two <code>-m</code> flags give a summary and a body:</p>
          <div class="lc-code-block"><pre><code>$ git add hours.txt
        $ git commit -m &quot;Add opening hours&quot; -m &quot;Customers kept asking when we open. Shown on the home page.&quot;
        [main 53f8cd5] Add opening hours
         1 file changed, 1 insertion(+)
         create mode 100644 hours.txt
        $ git log -1
        commit 53f8cd5...
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:15:00 2026 +0530

            Add opening hours

            Customers kept asking when we open. Shown on the home page.</code></pre></div>
          <p>If you run <code>git commit</code> with no <code>-m</code>, it opens your editor (lesson 2). This is best for longer messages. Git ignores lines that start with <code>#</code> in the editor.</p>
        </div>

        <div class="lc-card">
          <h3>The Shortcut git commit -a (and Its Trap)</h3>
          <p><code>-a</code> stages all changed <em>tracked</em> files, then commits. It never adds new (untracked) files:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;Kachori - 20&quot; &gt;&gt; snacks.txt
        $ git commit -am &quot;Add kachori&quot;
        [main 504038b] Add kachori
         1 file changed, 1 insertion(+)
        $ echo &quot;draft&quot; &gt; ideas.txt
        $ git commit -am &quot;Try to commit ideas&quot;
        On branch main
        Untracked files:
          (use &quot;git add &lt;file&gt;...&quot; to include in what will be committed)
        	ideas.txt

        nothing added to commit but untracked files present (use &quot;git add&quot; to track)</code></pre></div>
          <p>The second commit failed because <code>ideas.txt</code> is new. Use <code>git add ideas.txt</code> first.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>git add .</code> without checking <code>git status</code> first. You may commit secrets, logs or huge files. (Lesson 6 shows how to ignore them.)</li>
            <li>One huge commit each day with the message "work". Commit each separate change on its own.</li>
            <li>Expecting <code>git commit -am</code> to include new files.</li>
            <li>Getting stuck in the Vim editor after typing <code>git commit</code>: press <kbd>Esc</kbd>, type <code>:wq</code> and press <kbd>Enter</kbd>. This saves and quits. You can also set an easier <code>core.editor</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Make three changes in your repo: edit an existing file and create two new ones.</li>
            <li>Run <code>git add .</code>. Then remove one new file from staging with <code>git restore --staged</code>.</li>
            <li>Commit with a summary line in imperative mood and a one-sentence body (use two <code>-m</code> flags).</li>
            <li>Check the result with <code>git log -1</code>. Then commit the last file on its own.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Many teams use <em>Conventional Commits</em> prefixes such as <code>feat: add login page</code> or <code>fix: handle empty cart</code>. Follow the style your team already uses. Using one style every time matters most.</p></div>
      HTML
    },

    6 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Ignoring Files with .gitignore</h1>
        </div>
        <p class="lc-lead">You must <strong>never</strong> commit some files: passwords and API keys, caches, logs, and build output. A <code>.gitignore</code> file tells Git to act as if these files do not exist.</p>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Before .gitignore</h3>
          <p>A small Python project has an API key (a secret password for a service) in <code>.env</code>. It also has a cache folder, a log file and a build folder:</p>
          <div class="lc-code-block"><pre><code>$ git status -s
        ?? .env
        ?? __pycache__/
        ?? app.py
        ?? build/
        ?? debug.log
        ?? important.log</code></pre></div>
          <p>If you ran <code>git add .</code> now, Git would commit your secret key. Create a file named exactly <code>.gitignore</code> in the project root:</p>
          <div class="lc-code-block"><pre><code>$ cat .gitignore
        # Python cache and virtual environments
        __pycache__/
        .venv/

        # Secrets - never commit these
        .env

        # Logs and build output
        *.log
        !important.log
        build/</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: After .gitignore</h3>
          <div class="lc-code-block"><pre><code>$ git status -s -uall
        ?? .gitignore
        ?? app.py
        ?? important.log
        $ git check-ignore -v .env debug.log
        .gitignore:6:.env	.env
        .gitignore:9:*.log	debug.log
        $ git check-ignore -v important.log
        .gitignore:10:!important.log	important.log</code></pre></div>
          <p>Only the files you want are left (<code>-uall</code> lists every file, not just folders). <code>git check-ignore -v</code> tells you <em>which line</em> of <code>.gitignore</code> matched. It is your best tool for finding problems. Git keeps <code>important.log</code> because line 10 (<code>!important.log</code>) adds it back. Commit <code>.gitignore</code> itself. Then the whole team uses the same rules.</p>
        </div>

        <div class="lc-card">
          <h3>Pattern Cheat Sheet</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Ignores</th></tr></thead>
            <tbody>
              <tr><td><code>*.log</code></td><td>Every file ending in <code>.log</code>, in any folder</td></tr>
              <tr><td><code>build/</code></td><td>Any folder named <code>build</code> (a <code>/</code> at the end = folders only)</td></tr>
              <tr><td><code>/config.json</code></td><td>Only <code>config.json</code> at the repository root</td></tr>
              <tr><td><code>docs/*.pdf</code></td><td>PDFs directly inside <code>docs</code></td></tr>
              <tr><td><code>**/temp</code></td><td><code>temp</code> at any depth</td></tr>
              <tr><td><code>!keep.log</code></td><td>Exception: do <em>not</em> ignore this file</td></tr>
              <tr><td><code># text</code></td><td>A comment</td></tr>
            </tbody>
          </table>
          <p>One limit: you cannot add a file back with <code>!</code> if its parent folder is ignored. Git does not even look inside ignored folders.</p>
        </div>

        <div class="lc-card">
          <h3>Already Committed? .gitignore Won't Help</h3>
          <p><code>.gitignore</code> only works on <strong>untracked</strong> files. If Git already tracks a file, it keeps tracking it. Remove it from the index (but not from disk) with <code>git rm --cached</code>:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;id,temp&quot; &gt; readings.csv
        $ git add readings.csv &amp;&amp; git commit -m &quot;Add readings&quot;
        [main 9475edd] Add readings
         1 file changed, 1 insertion(+)
         create mode 100644 readings.csv
        $ echo &quot;*.csv&quot; &gt;&gt; .gitignore
        $ echo &quot;1,31&quot; &gt;&gt; readings.csv
        $ git status -s
         M .gitignore
         M readings.csv
        $ git rm --cached readings.csv
        rm &#39;readings.csv&#39;
        $ git add .gitignore
        $ git status -s
        M  .gitignore
        D  readings.csv
        $ git commit -m &quot;Stop tracking CSV files&quot;
        [main 1baac01] Stop tracking CSV files
         2 files changed, 1 insertion(+), 1 deletion(-)
         delete mode 100644 readings.csv</code></pre></div>
          <p><code>D&nbsp;</code> means "deleted from the repository". The file is still on your disk, and Git now ignores it. Warning: was the file a <strong>secret that you already pushed</strong>? Then it stays in history. Treat the key as leaked and <strong>rotate it</strong> (create a new key and cancel the old one).</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Naming the file <code>gitignore</code> or <code>.gitignore.txt</code> (Windows Notepad adds <code>.txt</code>). The name must be exactly <code>.gitignore</code>.</li>
            <li>Adding a rule and expecting a tracked file to disappear. Use <code>git rm --cached</code>.</li>
            <li>Ignoring <code>package-lock.json</code> or <code>poetry.lock</code>. You <em>should</em> commit lock files. Then everyone installs the same versions.</li>
            <li>Committing <code>.env</code> and then deleting it. The secret is still in history.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In a new repo, create <code>app.py</code>, <code>.env</code>, <code>error.log</code> and a <code>node_modules/</code> folder with any file inside.</li>
            <li>Write a <code>.gitignore</code> so that <code>git status -s</code> shows only <code>.gitignore</code> and <code>app.py</code>.</li>
            <li>Run <code>git check-ignore -v error.log</code>. Read which rule matched.</li>
            <li>Commit <code>error.log</code> on purpose with <code>git add -f error.log</code>. Then stop tracking it with <code>git rm --cached error.log</code> and commit.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Do not write <code>.gitignore</code> from nothing. GitHub's <code>github/gitignore</code> repository has ready-made templates for Python, Node, Java, Android and more. Some files are made only by <em>your</em> computer (like <code>.DS_Store</code> on macOS). For these, use a personal global file: <code>git config --global core.excludesFile ~/.gitignore_global</code>.</p></div>
      HTML
    },

    7 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Viewing History with git log and git show</h1>
        </div>
        <p class="lc-lead">History is only useful if you can find things in it. <code>git log</code> lists commits. It can filter them by author, file, message or date. <code>git show</code> opens one commit so you can see exactly what changed.</p>

        <div class="lc-card">
          <h3>The Example Repository</h3>
          <p>The walkthroughs below use a repo with five commits. Two people made them: Asha and Ravi. Full hashes have 40 characters. In this course we shorten them to 7 characters followed by <code>...</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Full and One-Line Log</h3>
          <div class="lc-code-block"><pre><code>$ git log -2
        commit 1e5d920...
        Author: Ravi Kumar &lt;ravi@example.com&gt;
        Date:   Tue Sep 1 10:14:00 2026 +0530

            Raise masala chai price to 22

        commit 9f8f072...
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:12:00 2026 +0530

            Add snacks list</code></pre></div>
          <p>The full format shows the hash, author, date and full message. <code>-2</code> shows only two commits. (In a real terminal, a long log opens in a pager, a viewer that shows one page at a time. Press <kbd>q</kbd> to quit and <kbd>Space</kbd> for the next page.)</p>
          <div class="lc-code-block"><pre><code>$ git log --oneline
        1e5d920 Raise masala chai price to 22
        9f8f072 Add snacks list
        cd18524 Add ginger chai
        44ad7dd Add README
        7901826 Add menu
        $ git log --oneline --author=&quot;Ravi&quot;
        1e5d920 Raise masala chai price to 22
        cd18524 Add ginger chai
        $ git log --oneline -- menu.txt
        1e5d920 Raise masala chai price to 22
        cd18524 Add ginger chai
        7901826 Add menu
        $ git log --oneline --grep=&quot;price&quot;
        1e5d920 Raise masala chai price to 22</code></pre></div>
          <p>Look at <code>-- menu.txt</code>. The <code>--</code> separates options from file names. Git lists only commits that changed <code>menu.txt</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Useful git log Options</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>--oneline</code></td><td>Short hash + summary, one line each</td></tr>
              <tr><td><code>-n 5</code> or <code>-5</code></td><td>Only the newest 5 commits</td></tr>
              <tr><td><code>--graph --all</code></td><td>Draw branches and merges as text pictures (lesson 12+)</td></tr>
              <tr><td><code>--author="Ravi"</code></td><td>Commits whose author matches</td></tr>
              <tr><td><code>--grep="price"</code></td><td>Commits whose message contains the word</td></tr>
              <tr><td><code>--since="2 weeks ago"</code></td><td>Commits newer than a date</td></tr>
              <tr><td><code>-p</code> / <code>--stat</code></td><td>Show the full changes / a summary for each file</td></tr>
              <tr><td><code>-- path</code></td><td>Only commits that changed this file or folder</td></tr>
            </tbody>
          </table>
          <p>You can even make your own format:</p>
          <div class="lc-code-block"><pre><code>$ git log --pretty=format:&quot;%h %an %ad %s&quot; --date=short -3
        1e5d920 Ravi Kumar 2026-09-01 Raise masala chai price to 22
        9f8f072 Asha Rao 2026-09-01 Add snacks list
        cd18524 Ravi Kumar 2026-09-01 Add ginger chai</code></pre></div>
          <p><code>%h</code> = short hash, <code>%an</code> = author name, <code>%ad</code> = author date, <code>%s</code> = summary.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: git show</h3>
          <div class="lc-code-block"><pre><code>$ git show HEAD
        commit 1e5d920...
        Author: Ravi Kumar &lt;ravi@example.com&gt;
        Date:   Tue Sep 1 10:14:00 2026 +0530

            Raise masala chai price to 22

        diff --git a/menu.txt b/menu.txt
        index 4e64776..0ce4c78 100644
        --- a/menu.txt
        +++ b/menu.txt
        @@ -1,2 +1,2 @@
        -Masala chai - 20
        +Masala chai - 22
         Ginger chai - 25</code></pre></div>
          <p>Below the commit details is the <strong>diff</strong> (the list of changed lines). <code>-</code> lines were removed. <code>+</code> lines were added. Lines that start with a space did not change. They show the nearby text. Lesson 8 explains diffs fully.</p>
          <p><strong>Relative names:</strong> <code>HEAD</code> is the current commit. <code>HEAD~1</code> is its parent. <code>HEAD~2</code> is the grandparent, and so on:</p>
          <div class="lc-code-block"><pre><code>$ git show --oneline --stat HEAD~2
        cd18524 Add ginger chai
         menu.txt | 1 +
         1 file changed, 1 insertion(+)</code></pre></div>
          <p>You can also use any hash (or its first 7+ characters): <code>git show cd18524</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Searching History with -S, git grep and git blame</h3>
          <p>In a bigger project, you often ask "when did this text appear?" or "who changed this line?". Here is a small menu repository. It has five commits by two people:</p>
          <div class="lc-code-block"><pre><code>$ git log --oneline
        baaf681 Add cardamom chai
        a779437 Raise ginger chai price
        9f319a1 Add snacks
        5c4d2ce Add ginger chai
        7901826 Add menu
        $ git log -S &quot;Ginger chai&quot; --oneline
        5c4d2ce Add ginger chai
        $ git log -G &quot;chai - 3[0-9]&quot; --oneline
        baaf681 Add cardamom chai
        a779437 Raise ginger chai price
        $ git grep -n &quot;chai&quot;
        menu.txt:1:Masala chai - 20
        menu.txt:2:Ginger chai - 30
        menu.txt:3:Cardamom chai - 30
        $ git grep -n &quot;Ginger&quot; HEAD~3
        HEAD~3:menu.txt:2:Ginger chai - 25
        $ git blame menu.txt
        ^7901826 (Asha Rao   2026-09-01 10:04:00 +0530 1) Masala chai - 20
        a779437b (Ravi Kumar 2026-09-01 10:11:00 +0530 2) Ginger chai - 30
        baaf6815 (Asha Rao   2026-09-01 10:13:00 +0530 3) Cardamom chai - 30
        $ git blame -L 2,2 menu.txt
        a779437b (Ravi Kumar 2026-09-01 10:11:00 +0530 2) Ginger chai - 30</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Answers</th></tr></thead>
            <tbody>
              <tr><td><code>git log -S "text"</code></td><td>Which commits <strong>added or removed</strong> this text? (the "pickaxe")</td></tr>
              <tr><td><code>git log -G "regex"</code></td><td>Which commits changed a line matching this pattern?</td></tr>
              <tr><td><code>git grep -n "text" [commit]</code></td><td>Where is this text in the tracked files now (or in any old commit)?</td></tr>
              <tr><td><code>git blame file</code></td><td>Which commit and author last changed each line?</td></tr>
              <tr><td><code>git blame -L 2,2 file</code></td><td>The same for only line 2</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><code>-S "Ginger chai"</code> lists only <code>5c4d2ce</code>. "Raise ginger chai price" changed the line. But it did not change <em>how many times</em> "Ginger chai" appears. So <code>-S</code> skips it. <code>-G</code> matches any changed line, so it finds it.</li>
            <li><code>git grep</code> searches only tracked files. So it is fast. It skips <code>node_modules/</code> and other ignored folders.</li>
            <li>In <code>git blame</code>, the <code>^</code> before <code>7901826</code> marks a line that has not changed since the first commit shown.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Feeling "stuck" in the pager. Press <kbd>q</kbd>.</li>
            <li>Forgetting <code>--</code> before a file name that looks like a branch name.</li>
            <li>Confusing <code>--author</code> (who wrote it) with <code>--grep</code> (words in the message).</li>
            <li>Reading only the summary line. The body often explains <em>why</em>. Use <code>git log</code> without <code>--oneline</code>, or use <code>git show</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Make at least four commits in a practice repo, changing two different files.</li>
            <li>List only the commits that changed one of the files.</li>
            <li>Show the commit two steps before <code>HEAD</code> with <code>git show HEAD~2</code>.</li>
            <li>Create an alias: <code>git config --global alias.last "log -1 --stat"</code> and run <code>git last</code>.</li>
            <li>Use <code>git log -S</code> to find the commit that first added a word to your file. Then run <code>git blame</code> on that file.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>git blame</code> is not about blaming people. It shows you the commit whose message explains the line. Add <code>-w</code> to ignore changes that only touch spaces. On GitHub, click <strong>Blame</strong> on any file for the same view.</p></div>
      HTML
    },

    8 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Comparing Changes with git diff</h1>
        </div>
        <p class="lc-lead"><code>git diff</code> shows <strong>exactly which lines changed</strong>. Professionals check the diff before every commit. This is how they catch typos, debug prints and changes made by mistake.</p>

        <div class="lc-card">
          <h3>Which diff Compares What?</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Compares</th><th>Question it answers</th></tr></thead>
            <tbody>
              <tr><td><code>git diff</code></td><td>Working tree vs staging area</td><td>What have I changed but not staged?</td></tr>
              <tr><td><code>git diff --staged</code></td><td>Staging area vs last commit</td><td>What will my next commit contain?</td></tr>
              <tr><td><code>git diff HEAD</code></td><td>Working tree vs last commit</td><td>Everything since my last commit</td></tr>
              <tr><td><code>git diff A B</code></td><td>Commit A vs commit B</td><td>What changed between two points?</td></tr>
            </tbody>
          </table>
          <p><code>--cached</code> is an older name for <code>--staged</code>. Both work.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Unstaged Changes</h3>
          <p><code>menu.txt</code> has three lines. We change the lemon tea price. Then we add a fourth line:</p>
          <div class="lc-code-block"><pre><code>$ printf &quot;Masala chai - 20\nGinger chai - 25\nLemon tea - 18\nElaichi chai - 25\n&quot; &gt; menu.txt
        $ git diff
        diff --git a/menu.txt b/menu.txt
        index 126e5cc..d47a072 100644
        --- a/menu.txt
        +++ b/menu.txt
        @@ -1,3 +1,4 @@
         Masala chai - 20
         Ginger chai - 25
        -Lemon tea - 15
        +Lemon tea - 18
        +Elaichi chai - 25</code></pre></div>
          <h4>How to read it</h4>
          <ul class="lc-list">
            <li><code>--- a/menu.txt</code> is the old version. <code>+++ b/menu.txt</code> is the new one.</li>
            <li><code>@@ -1,3 +1,4 @@</code> is a <strong>hunk header</strong> (the title of one block of changes). It means: from line 1, the old file had 3 lines here and the new file has 4.</li>
            <li>A changed line shows up as one <code>-</code> line (old) and one <code>+</code> line (new).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: After Staging</h3>
          <div class="lc-code-block"><pre><code>$ git add menu.txt
        $ git diff
        $ git diff --staged
        diff --git a/menu.txt b/menu.txt
        index 126e5cc..d47a072 100644
        --- a/menu.txt
        +++ b/menu.txt
        @@ -1,3 +1,4 @@
         Masala chai - 20
         Ginger chai - 25
        -Lemon tea - 15
        +Lemon tea - 18
        +Elaichi chai - 25</code></pre></div>
          <p>Plain <code>git diff</code> now prints <strong>nothing</strong>. This surprises many beginners. The changes are not lost. They moved to the staging area. So you need <code>--staged</code> to see them.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Comparing Commits</h3>
          <p>After you commit, compare points in history:</p>
          <div class="lc-code-block"><pre><code>$ git diff --stat HEAD~2 HEAD
         README.md | 1 +
         menu.txt  | 3 ++-
         2 files changed, 3 insertions(+), 1 deletion(-)
        $ git diff HEAD~2 HEAD~1
        diff --git a/README.md b/README.md
        new file mode 100644
        index 0000000..ae90c44
        --- /dev/null
        +++ b/README.md
        @@ -0,0 +1 @@
        +# Chai Menu
        $ git diff HEAD~2 HEAD --word-diff -- menu.txt
        diff --git a/menu.txt b/menu.txt
        index 126e5cc..d47a072 100644
        --- a/menu.txt
        +++ b/menu.txt
        @@ -1,3 +1,4 @@
        Masala chai - 20
        Ginger chai - 25
        Lemon tea - [-15-]{+18+}
        {+Elaichi chai - 25+}</code></pre></div>
          <ul class="lc-list">
            <li><code>--stat</code> gives a quick summary for each file.</li>
            <li><code>new file mode</code> and <code>--- /dev/null</code> mean the file did not exist before.</li>
            <li><code>--word-diff</code> marks changed words inside the line: <code>[-old-]{+new+}</code>. Useful for text and documentation.</li>
          </ul>
          <p>Later you will compare branches the same way: <code>git diff main feature/snacks</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking changes are lost because <code>git diff</code> is empty after <code>git add</code>.</li>
            <li>Committing without checking <code>git diff --staged</code>. Then a forgotten <code>print("debug")</code> goes out with your code.</li>
            <li>Swapping the order. <code>git diff B A</code> shows the reverse of <code>git diff A B</code> (additions show as deletions).</li>
            <li>New untracked files never show in <code>git diff</code>. Stage them first, then use <code>--staged</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Edit two lines in a tracked file. Run <code>git diff</code> and find the hunk header.</li>
            <li>Stage the file. Check that <code>git diff</code> is empty and <code>git diff --staged</code> is not.</li>
            <li>Commit, then run <code>git diff HEAD~1 HEAD --stat</code>.</li>
            <li>Try <code>git diff HEAD~1 HEAD --word-diff</code>. Compare it with the normal output.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Do these steps before every commit: <code>git status</code> → <code>git diff</code> → <code>git add</code> → <code>git diff --staged</code> → <code>git commit</code>. VS Code's Source Control panel shows the same diffs visually.</p></div>
      HTML
    },

    9 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Fixing Mistakes with restore and --amend</h1>
        </div>
        <p class="lc-lead">Small mistakes happen all day. You break an edit, stage the wrong file, or make a typo in a commit message. <code>git restore</code> and <code>git commit --amend</code> fix these. Use them before you share your work.</p>

        <div class="lc-card">
          <h3>Which Fix for Which Mistake?</h3>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>Modern command</th><th>Old way (don't use)</th></tr></thead>
            <tbody>
              <tr><td>Remove unsaved edits to a file</td><td><code>git restore file</code></td><td><code>git checkout -- file</code></td></tr>
              <tr><td>Staged the wrong file</td><td><code>git restore --staged file</code></td><td><code>git reset HEAD file</code></td></tr>
              <tr><td>Need a file as it was in an older commit</td><td><code>git restore --source=HEAD~1 file</code></td><td><code>git checkout HEAD~1 -- file</code></td></tr>
              <tr><td>Typo in the last commit message</td><td><code>git commit --amend -m "..."</code></td><td>—</td></tr>
              <tr><td>Forgot a file in the last commit</td><td><code>git add file</code> then <code>git commit --amend --no-edit</code></td><td>—</td></tr>
            </tbody>
          </table>
          <p>Git 2.23 added <code>git restore</code> (and <code>git switch</code>, lesson 12). They split the confusing old <code>git checkout</code> into clearer commands.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Discard and Un-stage</h3>
          <div class="lc-code-block"><pre><code>$ echo &quot;OOPS&quot; &gt; menu.txt
        $ git status -s
         M menu.txt
        $ git restore menu.txt
        $ cat menu.txt
        Masala chai - 22
        Ginger chai - 25</code></pre></div>
          <p>The file is back to its last committed version. <strong>Warning:</strong> the removed edit is gone for good. Git never saved it. So even the reflog (lesson 18) cannot bring it back.</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;Tea bun - 10&quot; &gt; snacks.txt
        $ git add snacks.txt
        $ git restore --staged snacks.txt
        $ git status -s
        ?? snacks.txt</code></pre></div>
          <p>Un-staging is safe. <code>snacks.txt</code> is still on disk. It is just untracked again.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Get an Old Version of a File</h3>
          <div class="lc-code-block"><pre><code>$ git restore --source=HEAD~1 menu.txt
        $ cat menu.txt
        Masala chai - 20
        Ginger chai - 25
        $ git restore menu.txt</code></pre></div>
          <p><code>--source</code> copies the file from any commit into your working tree. It does not move any branch. Here we looked at the old price. Then we brought back the current version.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Amend the Last Commit</h3>
          <div class="lc-code-block"><pre><code>$ git add snacks.txt
        $ git commit -m &quot;Add snaks list&quot;
        [main 26e1a66] Add snaks list
         1 file changed, 1 insertion(+)
         create mode 100644 snacks.txt
        $ git log --oneline
        26e1a66 Add snaks list
        96b9952 Raise masala chai price
        e93823f Add menu
        $ git commit --amend -m &quot;Add snacks list&quot;
        [main 5f7005e] Add snacks list
         Date: Tue Sep 1 10:19:00 2026 +0530
         1 file changed, 1 insertion(+)
         create mode 100644 snacks.txt
        $ git log --oneline
        5f7005e Add snacks list
        96b9952 Raise masala chai price
        e93823f Add menu</code></pre></div>
          <p>The hash changed from <code>26e1a66</code> to <code>5f7005e</code>. Amending does not edit a commit. It <strong>replaces</strong> it with a new one. The <code>Date:</code> line shows that Git keeps the original author date.</p>
          <p>Forgot a file? Stage it and amend without changing the message:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;Open 7am-9pm&quot; &gt; hours.txt
        $ git add hours.txt
        $ git commit --amend --no-edit
        [main bbc6f81] Add snacks list
         Date: Tue Sep 1 10:19:00 2026 +0530
         2 files changed, 2 insertions(+)
         create mode 100644 hours.txt
         create mode 100644 snacks.txt
        $ git show --stat --oneline HEAD
        bbc6f81 Add snacks list
         hours.txt  | 1 +
         snacks.txt | 1 +
         2 files changed, 2 insertions(+)</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Amending a commit you have <strong>already pushed</strong> to a shared branch. Your teammates still have the old commit. So your histories no longer match. On shared branches, make a new commit instead (or use <code>git revert</code>, lesson 17).</li>
            <li>Running <code>git restore file</code> when you meant <code>git restore --staged file</code>. The first one deletes your edits.</li>
            <li>Running <code>git restore .</code> in the project root. It removes <em>every</em> unstaged change.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Break a tracked file on purpose. Check <code>git status -s</code>, then restore it.</li>
            <li>Stage a new file and un-stage it again.</li>
            <li>Commit with a typo in the message on purpose. Then fix it with <code>--amend</code>. Compare the hashes in <code>git log --oneline</code> before and after.</li>
            <li>Create one more file. Add it to that same commit with <code>--amend --no-edit</code>. Check with <code>git show --stat HEAD</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>A simple rule: rewriting history (<code>--amend</code>, <code>reset</code>, <code>rebase</code>) is fine for commits that are only on your computer. Once others have them, add new commits instead.</p></div>
      HTML
    },

    10 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Tagging Versions</h1>
        </div>
        <p class="lc-lead">A <strong>tag</strong> is a fixed name for one commit, such as <code>v1.0.0</code>. Branches move forward with every commit. Tags stay in one place. Teams tag every release (a version given to users). Then they can always find "the exact code we shipped".</p>

        <div class="lc-card">
          <h3>Two Kinds of Tags</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Annotated</th><th>Lightweight</th></tr></thead>
            <tbody>
              <tr><td>Create</td><td><code>git tag -a v1.0.0 -m "msg"</code></td><td><code>git tag v1.0.0</code></td></tr>
              <tr><td>Stores</td><td>Tagger, date, message (a real Git object)</td><td>Only a pointer to a commit</td></tr>
              <tr><td>Use for</td><td>Releases (recommended)</td><td>Private, temporary bookmarks</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Creating Tags</h3>
          <div class="lc-code-block"><pre><code>$ git tag -a v1.0.0 -m &quot;First public menu&quot;
        $ git tag v0.1.0 HEAD~2
        $ git tag
        v0.1.0
        v1.0.0
        $ git log --oneline --decorate
        7bf5689 (HEAD -&gt; main, tag: v1.0.0) Add README
        5c4d2ce Add ginger chai
        7901826 (tag: v0.1.0) Add menu</code></pre></div>
          <p>If you do not name a commit, the tag goes on <code>HEAD</code>. <code>HEAD~2</code> tagged an older commit. <code>--decorate</code> shows tags and branches next to their commits.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Inspecting Tags</h3>
          <div class="lc-code-block"><pre><code>$ git show v1.0.0 --stat
        tag v1.0.0
        Tagger: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:10:00 2026 +0530

        First public menu

        commit 7bf5689...
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:09:00 2026 +0530

            Add README

         README.md | 1 +
         1 file changed, 1 insertion(+)
        $ git cat-file -t v1.0.0
        tag
        $ git cat-file -t v0.1.0
        commit</code></pre></div>
          <p>The annotated tag has its own tagger, date and message. After that comes the commit it points to. <code>git cat-file -t</code> shows the difference. <code>v1.0.0</code> is a <code>tag</code> object. <code>v0.1.0</code> is just a name for a <code>commit</code>.</p>
          <div class="lc-code-block"><pre><code>$ git describe
        v1.0.0
        $ printf &quot;Samosa - 15\n&quot; &gt; snacks.txt
        $ git add snacks.txt
        $ git commit -m &quot;Add snacks&quot;
        [main 50e38b1] Add snacks
         1 file changed, 1 insertion(+)
         create mode 100644 snacks.txt
        $ git describe
        v1.0.0-1-g50e38b1
        $ git tag -l &quot;v1.*&quot;
        v1.0.0
        $ git tag -d v0.1.0
        Deleted tag &#39;v0.1.0&#39; (was 7901826)</code></pre></div>
          <p>On the tagged commit, <code>git describe</code> prints just <code>v1.0.0</code>. After one more commit, it prints <code>v1.0.0-1-g50e38b1</code>. This means "1 commit after <code>v1.0.0</code>, at commit <code>50e38b1</code>" (the <code>g</code> stands for Git). Build tools use it to print version numbers. <code>-l</code> filters tags with a pattern. <code>-d</code> deletes a local tag.</p>
        </div>

        <div class="lc-card">
          <h3>Semantic Versioning (SemVer)</h3>
          <p>Most projects name tags <code>vMAJOR.MINOR.PATCH</code>:</p>
          <table class="lc-table">
            <thead><tr><th>Change</th><th>Example</th><th>Bump</th></tr></thead>
            <tbody>
              <tr><td>Bug fix, nothing breaks</td><td>Fix a wrong price</td><td><code>v1.0.0 → v1.0.1</code></td></tr>
              <tr><td>New feature, old things still work</td><td>Add a snacks page</td><td><code>v1.0.1 → v1.1.0</code></td></tr>
              <tr><td>Breaking change (old code stops working)</td><td>Remove an old API</td><td><code>v1.1.0 → v2.0.0</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Expecting <code>git push</code> to upload tags. It does not. Push each tag yourself (<code>git push origin v1.0.0</code>, lesson 20).</li>
            <li>Moving or reusing a tag that others already downloaded. Tags should never change. Make <code>v1.0.1</code> instead.</li>
            <li>Using lightweight tags for releases. You lose who tagged it, when, and why.</li>
            <li>Mixing name styles (<code>v1</code>, <code>1.0</code>, <code>release-1</code>). Pick one style, usually <code>v1.2.3</code>.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In a repo with at least three commits, create an annotated tag <code>v1.0.0</code> on <code>HEAD</code>.</li>
            <li>Tag the first commit as <code>v0.1.0</code> (find its hash with <code>git log --oneline</code>).</li>
            <li>Make one more commit and run <code>git describe</code>. Explain its output in your own words.</li>
            <li>Delete <code>v0.1.0</code> and list the remaining tags.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>You can open the code of any release to test it: <code>git switch --detach v1.0.0</code>. Lesson 12 explains what "detached" means.</p></div>
      HTML
    },

    11 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">How Git Stores Data: Objects and Refs</h1>
        </div>
        <p class="lc-lead">So far you have used Git's everyday commands. Before we start branching, let us open the <code>.git</code> folder. We will see how Git really stores your work. The model is simple: <strong>objects</strong> plus <strong>refs</strong>. Once you know it, branches, merges, reset and reflog all make much more sense.</p>

        <div class="lc-card">
          <h3>Four Kinds of Objects</h3>
          <p>Everything Git saves goes into an <strong>object database</strong> in <code>.git/objects</code>. Each object's name is a <strong>hash</strong> (a unique code) made from its content. So the same content always gets the same name.</p>
          <table class="lc-table">
            <thead><tr><th>Object</th><th>Stores</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><strong>blob</strong></td><td>The content of one file (no file name)</td><td>the text <code>Masala chai - 20</code></td></tr>
              <tr><td><strong>tree</strong></td><td>A folder list: names, modes and the hashes of blobs and sub-trees</td><td><code>menu.txt</code> → blob <code>8cdd008</code></td></tr>
              <tr><td><strong>commit</strong></td><td>One tree (the snapshot), parent commit(s), author, committer, message</td><td>"Add menu"</td></tr>
              <tr><td><strong>tag</strong></td><td>An annotated tag: which object it points to, tagger and message (lesson 10)</td><td><code>v1.0.0</code></td></tr>
            </tbody>
          </table>
          <div class="lc-flow">
            <div class="lc-flow-step">main<small>ref</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">commit<small>message, parent</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">tree<small>file names</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">blobs<small>file contents</small></div>
          </div>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Read the Objects of a Commit</h3>
          <p><code>git cat-file</code> is a <strong>plumbing</strong> command: a low-level tool that shows raw objects. <code>-t</code> prints the type. <code>-p</code> prints the content in a readable way. (Full hashes have 40 characters. We shorten them to 7 here.)</p>
          <div class="lc-code-block"><pre><code>$ git init -q
        $ echo &quot;Masala chai - 20&quot; &gt; menu.txt
        $ echo &quot;# Chai Menu&quot; &gt; README.md
        $ git add .
        $ git commit -q -m &quot;Add menu&quot;
        $ git cat-file -t HEAD
        commit
        $ git cat-file -p HEAD
        tree dafe3bb...
        author Asha Rao &lt;asha@example.com&gt; 1788237300 +0530
        committer Asha Rao &lt;asha@example.com&gt; 1788237300 +0530

        Add menu
        $ git cat-file -p &quot;HEAD^{tree}&quot;
        100644 blob ae90c44...	README.md
        100644 blob 8cdd008...	menu.txt
        $ git cat-file -p HEAD:menu.txt
        Masala chai - 20</code></pre></div>
          <ul class="lc-list">
            <li>The commit does not contain your files. It points to one <strong>tree</strong>. The tree points to one <strong>blob</strong> for each file.</li>
            <li>The first commit has no <code>parent</code> line. The long number after the email is the time in seconds since 1970. After it comes the time zone (<code>+0530</code> is IST).</li>
            <li><code>HEAD^{tree}</code> means "the tree of HEAD". <code>HEAD:menu.txt</code> means "the blob for <code>menu.txt</code> in HEAD".</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Same Content, Same Hash</h3>
          <div class="lc-code-block"><pre><code>$ git hash-object menu.txt
        8cdd008...
        $ echo &quot;Masala chai - 20&quot; | git hash-object --stdin
        8cdd008...
        $ git rev-parse --show-object-format
        sha1</code></pre></div>
          <p><code>git hash-object</code> works out the name Git would give some content. The file and the typed text give the same hash as the blob in the tree. This means objects are <strong>content-addressed</strong> (named by their content). This repository uses <code>sha1</code> (by default, Git uses a hardened SHA-1). New repositories can choose SHA-256 with <code>git init --object-format=sha256</code>. Git 3.0 plans to make SHA-256 the default.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: A Second Commit Reuses Unchanged Files</h3>
          <div class="lc-code-block"><pre><code>$ echo &quot;Ginger chai - 25&quot; &gt;&gt; menu.txt
        $ git commit -q -am &quot;Add ginger chai&quot;
        $ git cat-file -p HEAD
        tree bb3f812...
        parent 6900d55...
        author Asha Rao &lt;asha@example.com&gt; 1788237840 +0530
        committer Asha Rao &lt;asha@example.com&gt; 1788237840 +0530

        Add ginger chai
        $ git ls-tree HEAD~1
        100644 blob ae90c44...	README.md
        100644 blob 8cdd008...	menu.txt
        $ git ls-tree HEAD
        100644 blob ae90c44...	README.md
        100644 blob 4e64776...	menu.txt</code></pre></div>
          <ul class="lc-list">
            <li>The new commit has a <code>parent</code> line. This chain of parents <em>is</em> your history.</li>
            <li><code>README.md</code> did not change. So both trees point to the <strong>same blob</strong> <code>ae90c44</code>. Git stores full snapshots, but it never stores an unchanged file twice.</li>
            <li><code>menu.txt</code> changed. So it got a new blob (<code>4e64776</code>).</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Refs Are Just Names for Hashes</h3>
          <p>A <strong>ref</strong> is an easy-to-read name that points to a commit. A branch is a ref in <code>.git/refs/heads/</code>. A tag is stored in <code>.git/refs/tags/</code>. <code>HEAD</code> says which branch you are on.</p>
          <div class="lc-code-block"><pre><code>$ cat .git/HEAD
        ref: refs/heads/main
        $ cat .git/refs/heads/main
        aca45b0...
        $ git rev-parse main HEAD~1
        aca45b0...
        6900d55...
        $ git branch feature/snacks
        $ cat .git/refs/heads/feature/snacks
        aca45b0...
        $ git show-ref
        aca45b0... refs/heads/feature/snacks
        aca45b0... refs/heads/main</code></pre></div>
          <p>Creating <code>feature/snacks</code> only wrote a tiny file with a hash in it. Git copied no files. That is why Git branches are instant and cost almost nothing. The next lesson uses this. When you commit, Git writes new objects. Then it moves the current branch's ref to the new commit.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Packing Objects</h3>
          <div class="lc-code-block"><pre><code>$ git count-objects
        7 objects, 28 kilobytes
        $ git gc -q
        $ git count-objects -v
        count: 0
        size: 0
        in-pack: 7
        packs: 1
        size-pack: 1
        prune-packable: 0
        garbage: 0
        size-garbage: 0
        $ cat .git/packed-refs
        # pack-refs with: peeled fully-peeled sorted
        aca45b0... refs/heads/feature/snacks
        aca45b0... refs/heads/main</code></pre></div>
          <p>At first, each object is a separate compressed ("loose") file. <code>git gc</code> (garbage collection, a clean-up command) packs them into one <strong>packfile</strong>. The packfile stores similar objects as small differences. It also moves refs into <code>.git/packed-refs</code>. Git runs this by itself from time to time. So you rarely need to run it. The kilobyte numbers depend on your file system.</p>
        </div>

        <div class="lc-card">
          <h3>Plumbing vs Porcelain</h3>
          <table class="lc-table">
            <thead><tr><th>Everyday (porcelain)</th><th>What happens underneath (plumbing)</th></tr></thead>
            <tbody>
              <tr><td><code>git add menu.txt</code></td><td>Writes a blob (like <code>git hash-object -w</code>) and saves it in the index</td></tr>
              <tr><td><code>git commit</code></td><td>Writes a tree from the index and a commit object. Then moves the branch ref</td></tr>
              <tr><td><code>git branch name</code></td><td>Writes a new ref file containing the current commit's hash</td></tr>
              <tr><td><code>git log</code></td><td>Starts at a ref and follows the <code>parent</code> lines</td></tr>
              <tr><td><code>git show HEAD:menu.txt</code></td><td>Same as <code>git cat-file -p HEAD:menu.txt</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking Git stores only the differences between versions. Each commit saves a full snapshot. Later, packfiles compress it in the background.</li>
            <li>Editing files inside <code>.git</code> by hand. Read them to learn, but change them only with Git commands.</li>
            <li>Believing that deleting a branch deletes its commits at once. Git removes only the ref. The objects stay until Git cleans up unreachable objects (objects no ref leads to) much later. Lesson 18 shows how to get them back.</li>
            <li>Expecting <code>.git/refs/heads/main</code> to always exist. After <code>git gc</code>, the ref may be in <code>packed-refs</code> instead. Use <code>git rev-parse main</code>, which always works.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In any repository, run <code>git cat-file -p HEAD</code>. Then follow the <code>tree</code> hash with <code>git cat-file -p &lt;hash&gt;</code> until you reach a file's content.</li>
            <li>Run <code>echo "hello" | git hash-object --stdin</code> on your computer and on a friend's. Are the hashes the same?</li>
            <li>Create a branch and run <code>cat .git/HEAD</code> and <code>git show-ref</code>. Switch to the branch and read <code>.git/HEAD</code> again.</li>
            <li>Make a commit that changes only one file. Then compare <code>git ls-tree HEAD~1</code> and <code>git ls-tree HEAD</code>. Which blob hashes stayed the same?</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Remember the model in one line: <strong>objects never change; refs move</strong>. Commit, merge, rebase and reset all create objects and move refs. They do nothing more.</p></div>
      HTML
    },

    12 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Creating and Switching Branches</h1>
        </div>
        <p class="lc-lead">A <strong>branch</strong> is a separate line of work. You can build a new feature on a branch. Meanwhile, <code>main</code> stays stable. When the feature is ready, you combine the two.</p>

        <div class="lc-card">
          <h3>What a Branch Really Is</h3>
          <p>A branch is only a <strong>movable pointer to a commit</strong>. It is a tiny file that holds a hash (a unique ID for a commit). You saw it in <code>.git/refs/heads/</code> in lesson 11. So creating a branch is instant, even in a huge project. <code>HEAD</code> points to the branch you are on. When you commit, that branch moves forward.</p>
          <svg viewBox="0 0 560 170" width="100%" style="max-width:560px" role="img" aria-label="Two commits on main, one more commit on feature/snacks, and HEAD points to feature/snacks">
            <circle cx="70" cy="110" r="18" fill="var(--bg3)" stroke="#f97316" stroke-width="2"/>
            <text x="70" y="115" text-anchor="middle" fill="var(--txt)" font-size="11">7901826</text>
            <circle cx="210" cy="110" r="18" fill="var(--bg3)" stroke="#f97316" stroke-width="2"/>
            <text x="210" y="115" text-anchor="middle" fill="var(--txt)" font-size="11">44ad7dd</text>
            <circle cx="350" cy="110" r="18" fill="var(--bg3)" stroke="#9d5cf6" stroke-width="2"/>
            <text x="350" y="115" text-anchor="middle" fill="var(--txt)" font-size="11">9d756cb</text>
            <line x1="88" y1="110" x2="192" y2="110" stroke="var(--txt3)" stroke-width="2"/>
            <line x1="228" y1="110" x2="332" y2="110" stroke="var(--txt3)" stroke-width="2"/>
            <rect x="175" y="140" width="70" height="24" rx="6" fill="#f97316"/>
            <text x="210" y="157" text-anchor="middle" fill="#fff" font-size="12" font-weight="600">main</text>
            <rect x="295" y="55" width="110" height="24" rx="6" fill="#9d5cf6"/>
            <text x="350" y="72" text-anchor="middle" fill="#fff" font-size="12" font-weight="600">feature/snacks</text>
            <rect x="315" y="12" width="70" height="24" rx="6" fill="none" stroke="var(--txt)"/>
            <text x="350" y="29" text-anchor="middle" fill="var(--txt)" font-size="12" font-weight="600">HEAD</text>
            <line x1="350" y1="36" x2="350" y2="53" stroke="var(--txt)" stroke-width="1.5"/>
            <text x="470" y="115" fill="var(--txt3)" font-size="11">newer →</text>
          </svg>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Create a Branch and Commit on It</h3>
          <p>Start with a repo that has two commits on <code>main</code>:</p>
          <div class="lc-code-block"><pre><code>$ git branch
        * main
        $ git switch -c feature/snacks
        Switched to a new branch &#39;feature/snacks&#39;
        $ echo &quot;Samosa - 15&quot; &gt; snacks.txt
        $ git add snacks.txt
        $ git commit -m &quot;Add snacks list&quot;
        [feature/snacks 9d756cb] Add snacks list
         1 file changed, 1 insertion(+)
         create mode 100644 snacks.txt
        $ git branch -v
        * feature/snacks 9d756cb Add snacks list
          main           44ad7dd Add README</code></pre></div>
          <p>The <code>*</code> marks the current branch. <code>git switch -c</code> means "create and switch". <code>git branch -v</code> shows the latest commit of each branch. Here, <code>feature/snacks</code> is one commit ahead of <code>main</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Switching Changes Your Files</h3>
          <div class="lc-code-block"><pre><code>$ ls
        README.md
        menu.txt
        snacks.txt
        $ git switch main
        Switched to branch &#39;main&#39;
        $ ls
        README.md
        menu.txt
        $ git log --oneline --graph --all
        * 9d756cb Add snacks list
        * 44ad7dd Add README
        * 7901826 Add menu</code></pre></div>
          <p><code>snacks.txt</code> disappeared when we switched to <code>main</code>. It exists only on the feature branch. It is not lost. Switch back and it returns. The graph shows the history of <code>main</code>, plus the extra feature commit on top.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Rename and Delete</h3>
          <div class="lc-code-block"><pre><code>$ git branch experiment
        $ git branch -m experiment try-cold-coffee
        $ git branch
          feature/snacks
        * main
          try-cold-coffee
        $ git branch -d try-cold-coffee
        Deleted branch try-cold-coffee (was 44ad7dd).
        $ git branch -d feature/snacks
        error: the branch &#39;feature/snacks&#39; is not fully merged
        hint: If you are sure you want to delete it, run &#39;git branch -D feature/snacks&#39;
        hint: Disable this message with &quot;git config set advice.forceDeleteBranch false&quot;</code></pre></div>
          <p><code>-d</code> will not delete a branch if its commits are not merged anywhere. This protects your work. <code>-D</code> forces the delete, and then the commits become hard to find. Git also will not switch branches if your uncommitted changes would be overwritten:</p>
          <div class="lc-code-block"><pre><code>$ git switch feature/snacks
        Switched to branch &#39;feature/snacks&#39;
        $ echo &quot;Vada pav - 20&quot; &gt;&gt; snacks.txt
        $ git switch main
        error: Your local changes to the following files would be overwritten by checkout:
        	snacks.txt
        Please commit your changes or stash them before you switch branches.
        Aborting</code></pre></div>
          <p>Commit or stash (lesson 16) your work first.</p>
        </div>

        <div class="lc-card">
          <h3>Detached HEAD</h3>
          <p>You can switch to a commit or tag instead of a branch. Then <code>HEAD</code> points directly at a commit. This is called "detached HEAD". It is fine for looking around. But any commits you make here belong to no branch.</p>
          <p>We are still on <code>feature/snacks</code>, with the unfinished <code>Vada pav</code> edit from above. First, throw that edit away and go back to <code>main</code>. Then look at an older commit:</p>
          <div class="lc-code-block"><pre><code>$ git restore snacks.txt
        $ git switch main
        Switched to branch &#39;main&#39;
        $ git switch --detach HEAD~1
        HEAD is now at 7901826 Add menu
        $ git switch -
        Previous HEAD position was 7901826 Add menu
        Switched to branch &#39;main&#39;</code></pre></div>
          <p><code>git switch -</code> jumps back to the previous branch. Did you make commits while detached? To keep them, run <code>git switch -c new-branch-name</code> before you leave.</p>
        </div>

        <div class="lc-card">
          <h3>Command Summary</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Modern</th><th>Old way</th></tr></thead>
            <tbody>
              <tr><td>List branches</td><td><code>git branch</code></td><td>same</td></tr>
              <tr><td>Create and switch</td><td><code>git switch -c name</code></td><td><code>git checkout -b name</code></td></tr>
              <tr><td>Switch</td><td><code>git switch name</code></td><td><code>git checkout name</code></td></tr>
              <tr><td>Rename</td><td><code>git branch -m old new</code></td><td>same</td></tr>
              <tr><td>Delete (merged)</td><td><code>git branch -d name</code></td><td>same</td></tr>
            </tbody>
          </table>
          <p>Common naming styles: <code>feature/login</code>, <code>fix/cart-total</code>, <code>docs/readme</code>. Use lowercase letters and hyphens. Do not use spaces.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Working directly on <code>main</code> for everything. Make a branch for each feature or fix.</li>
            <li>Using <code>git branch name</code> and forgetting to switch. Your next commit then goes to the old branch.</li>
            <li>Getting worried when files "disappear" after switching. They are on the other branch.</li>
            <li>Using <code>-D</code> out of habit and deleting unmerged work.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a branch <code>feature/about</code>. Add an <code>about.txt</code> file with one commit.</li>
            <li>Switch to <code>main</code> and check that <code>about.txt</code> is gone. Switch back and check that it returns.</li>
            <li>Run <code>git log --oneline --graph --all</code> (or your <code>git lg</code> alias).</li>
            <li>Try <code>git branch -d feature/about</code> from <code>main</code>. Read the error. You will merge it in the next lesson.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Branches cost almost nothing, so make as many as you need. A good branch lasts a few hours or days and does one thing.</p></div>
      HTML
    },

    13 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Merging Branches</h1>
        </div>
        <p class="lc-lead"><code>git merge</code> brings the work from another branch into the branch you are on. Git picks one of two methods by itself. The choice depends on whether the branches have split apart.</p>

        <div class="lc-card">
          <h3>Fast-Forward vs Three-Way Merge</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Fast-forward</th><th>Three-way merge</th></tr></thead>
            <tbody>
              <tr><td>When</td><td><code>main</code> has no new commits since the branch started</td><td>Both branches have new commits</td></tr>
              <tr><td>What Git does</td><td>Only moves the <code>main</code> pointer forward</td><td>Creates a <strong>merge commit</strong> (a commit with two parents)</td></tr>
              <tr><td>History</td><td>Straight line</td><td>Shows the branch and the join</td></tr>
            </tbody>
          </table>
          <p>Rule: always <strong>switch to the branch that should receive the changes</strong> first. This is usually <code>main</code>. Then merge the other branch into it.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Fast-Forward</h3>
          <div class="lc-code-block"><pre><code>$ git switch -c feature/readme
        Switched to a new branch &#39;feature/readme&#39;
        $ echo &quot;# Chai Menu&quot; &gt; README.md
        $ git add README.md
        $ git commit -m &quot;Add README&quot;
        [feature/readme d624836] Add README
         1 file changed, 1 insertion(+)
         create mode 100644 README.md
        $ git switch main
        Switched to branch &#39;main&#39;
        $ git merge feature/readme
        Updating 7901826..d624836
        Fast-forward
         README.md | 1 +
         1 file changed, 1 insertion(+)
         create mode 100644 README.md
        $ git log --oneline --graph
        * d624836 Add README
        * 7901826 Add menu</code></pre></div>
          <p>"Updating 7901826..d624836 / Fast-forward" means <code>main</code> simply moved to the feature commit. Git did not create a new commit.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Three-Way Merge</h3>
          <p>This time, <code>main</code> also gets a new commit while you build the feature:</p>
          <div class="lc-code-block"><pre><code>$ git switch -c feature/snacks
        Switched to a new branch &#39;feature/snacks&#39;
        $ echo &quot;Samosa - 15&quot; &gt; snacks.txt
        $ git add snacks.txt
        $ git commit -m &quot;Add snacks list&quot;
        [feature/snacks bc11e28] Add snacks list
         1 file changed, 1 insertion(+)
         create mode 100644 snacks.txt
        $ git switch main
        Switched to branch &#39;main&#39;
        $ echo &quot;Ginger chai - 25&quot; &gt;&gt; menu.txt
        $ git commit -am &quot;Add ginger chai&quot;
        [main 217b2c6] Add ginger chai
         1 file changed, 1 insertion(+)
        $ git merge feature/snacks
        Merge made by the &#39;ort&#39; strategy.
         snacks.txt | 1 +
         1 file changed, 1 insertion(+)
         create mode 100644 snacks.txt
        $ git log --oneline --graph
        *   7fdc5b1 Merge branch &#39;feature/snacks&#39;
        |\
        | * bc11e28 Add snacks list
        * | 217b2c6 Add ginger chai
        |/
        * d624836 Add README
        * 7901826 Add menu</code></pre></div>
          <p>The branches split, so Git created the merge commit <code>7fdc5b1</code>. Git opens your editor with the default message <code>Merge branch 'feature/snacks'</code>. Just save and close. ("ort" is the name of the default merge strategy in Git.) Read the graph from the bottom up. The history split after <code>Add README</code> and joined again at the merge.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Clean Up and --no-ff</h3>
          <div class="lc-code-block"><pre><code>$ git branch --merged
          feature/readme
          feature/snacks
        * main
        $ git branch -d feature/readme feature/snacks
        Deleted branch feature/readme (was d624836).
        Deleted branch feature/snacks (was bc11e28).</code></pre></div>
          <p>Some teams want a merge commit even when a fast-forward is possible. Then the history shows where each feature started and ended. Use <code>--no-ff</code>:</p>
          <div class="lc-code-block"><pre><code>$ git switch -c feature/hours
        Switched to a new branch &#39;feature/hours&#39;
        $ echo &quot;Open 7am-9pm&quot; &gt; hours.txt
        $ git add hours.txt
        $ git commit -m &quot;Add opening hours&quot;
        [feature/hours c083e73] Add opening hours
         1 file changed, 1 insertion(+)
         create mode 100644 hours.txt
        $ git switch main
        Switched to branch &#39;main&#39;
        $ git merge --no-ff feature/hours
        Merge made by the &#39;ort&#39; strategy.
         hours.txt | 1 +
         1 file changed, 1 insertion(+)
         create mode 100644 hours.txt
        $ git log --oneline --graph -4
        *   7e91318 Merge branch &#39;feature/hours&#39;
        |\
        | * c083e73 Add opening hours
        |/
        *   7fdc5b1 Merge branch &#39;feature/snacks&#39;
        |\
        | * bc11e28 Add snacks list</code></pre></div>
          <p>The opposite option is <code>git merge --ff-only</code>. It refuses to merge unless a fast-forward is possible. This is a safe choice when you update from a shared branch.</p>
        </div>

        <div class="lc-card">
          <h3>Branching Workflows Teams Use</h3>
          <p>Merging works the same everywhere. But teams agree on <em>which</em> branches exist, and how work reaches <code>main</code>:</p>
          <table class="lc-table">
            <thead><tr><th>Workflow</th><th>Branches</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><strong>GitHub Flow</strong></td><td><code>main</code> + short feature branches, merged by pull request</td><td>Most web apps and student projects. You deploy from <code>main</code></td></tr>
              <tr><td><strong>Trunk-based development</strong></td><td>Everyone merges very small branches into <code>main</code> at least once a day. Unfinished features are hidden behind feature flags (on/off switches in the code)</td><td>Teams with strong automated tests and frequent releases</td></tr>
              <tr><td><strong>Git Flow</strong></td><td><code>main</code>, <code>develop</code>, <code>feature/*</code>, <code>release/*</code>, <code>hotfix/*</code></td><td>Products with planned versions, where several releases need support at the same time</td></tr>
            </tbody>
          </table>
          <p>In every workflow, the rule is the same: short-lived branches are easier to merge. The GitHub course practises GitHub Flow step by step.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Merging in the wrong direction. Running <code>git merge main</code> while on <code>main</code> does nothing. Switch to the target branch first.</li>
            <li>Merging with uncommitted changes in your working tree. Commit or stash first, so a conflict cannot mix with your edits.</li>
            <li>Forgetting to delete merged branches. Soon <code>git branch</code> shows fifty old names.</li>
            <li>Not testing after a merge. Two branches can each work alone but break when you combine them.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Merge your <code>feature/about</code> branch from lesson 12 into <code>main</code>. Was it a fast-forward?</li>
            <li>Create <code>feature/contact</code> with one commit. Then commit something different on <code>main</code>.</li>
            <li>Merge <code>feature/contact</code> into <code>main</code>. View the result with <code>git log --oneline --graph</code>.</li>
            <li>List merged branches with <code>git branch --merged</code> and delete them with <code>-d</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>On GitHub, you usually merge through a <strong>pull request</strong> (a request to merge a branch, which others can review). It offers "Create a merge commit", "Squash and merge" and "Rebase and merge". These are the same ideas you are learning here.</p></div>
      HTML
    },

    14 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Resolving Merge Conflicts</h1>
        </div>
        <p class="lc-lead">A <strong>merge conflict</strong> happens when two branches change the <em>same lines</em> in different ways. Git cannot guess which version is right. So it stops and asks you. Conflicts are normal. You can fix one in four calm steps.</p>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Creating a Conflict</h3>
          <p>Start with <code>menu.txt</code>. It has <code>Masala chai - 20</code> and <code>Ginger chai - 25</code>. One branch raises the price. <code>main</code> changes the same line to a large size:</p>
          <div class="lc-code-block"><pre><code>$ git switch -c price-update
        Switched to a new branch &#39;price-update&#39;
        $ printf &quot;Masala chai - 22\nGinger chai - 25\n&quot; &gt; menu.txt
        $ git commit -am &quot;Raise masala chai to 22&quot;
        [price-update 0ee6afe] Raise masala chai to 22
         1 file changed, 1 insertion(+), 1 deletion(-)
        $ git switch main
        Switched to branch &#39;main&#39;
        $ printf &quot;Masala chai (large) - 30\nGinger chai - 25\n&quot; &gt; menu.txt
        $ git commit -am &quot;Sell masala chai in large size&quot;
        [main a7e7c4d] Sell masala chai in large size
         1 file changed, 1 insertion(+), 1 deletion(-)</code></pre></div>
          <p>(Here <code>printf</code> overwrites the whole file. In real work, you would just edit the file in your editor.)</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: The Conflict</h3>
          <div class="lc-code-block"><pre><code>$ git merge price-update
        Auto-merging menu.txt
        CONFLICT (content): Merge conflict in menu.txt
        Automatic merge failed; fix conflicts and then commit the result.
        $ git status
        On branch main
        You have unmerged paths.
          (fix conflicts and run &quot;git commit&quot;)
          (use &quot;git merge --abort&quot; to abort the merge)

        Unmerged paths:
          (use &quot;git add &lt;file&gt;...&quot; to mark resolution)
        	both modified:   menu.txt

        no changes added to commit (use &quot;git add&quot; and/or &quot;git commit -a&quot;)</code></pre></div>
          <p>The merge is paused. <code>git status</code> lists the file under <strong>Unmerged paths</strong> as <code>both modified</code>. Open the file:</p>
          <div class="lc-code-block"><pre><code>$ cat menu.txt
        &lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD
        Masala chai (large) - 30
        =======
        Masala chai - 22
        &gt;&gt;&gt;&gt;&gt;&gt;&gt; price-update
        Ginger chai - 25</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Marker</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD</code></td><td>Start of <strong>your</strong> version (the branch you are on, here <code>main</code>)</td></tr>
              <tr><td><code>=======</code></td><td>Divider between the two versions</td></tr>
              <tr><td><code>&gt;&gt;&gt;&gt;&gt;&gt;&gt; price-update</code></td><td>End of <strong>their</strong> version (the branch you are merging in)</td></tr>
            </tbody>
          </table>
          <p>The <code>Ginger chai</code> line had no conflict. So Git merged it normally.</p>
        </div>

        <div class="lc-card">
          <h3>The Four Steps to Resolve</h3>
          <ol class="lc-list">
            <li><strong>Edit</strong> the file so it looks the way it should in the end. Delete all three marker lines. You can keep one side, the other side, or combine both.</li>
            <li><strong>Check</strong> with <code>git diff</code> that no markers are left.</li>
            <li><strong>Stage</strong> the file with <code>git add</code>. This tells Git the conflict is "resolved".</li>
            <li><strong>Commit</strong> to finish the merge.</li>
          </ol>
          <div class="lc-code-block"><pre><code>$ printf &quot;Masala chai - 22\nMasala chai (large) - 30\nGinger chai - 25\n&quot; &gt; menu.txt
        $ git diff
        diff --cc menu.txt
        index b7f58ba,0ce4c78..0000000
        --- a/menu.txt
        +++ b/menu.txt
        @@@ -1,2 -1,2 +1,3 @@@
        + Masala chai - 22
         +Masala chai (large) - 30
          Ginger chai - 25
        $ git add menu.txt
        $ git status
        On branch main
        All conflicts fixed but you are still merging.
          (use &quot;git commit&quot; to conclude merge)

        Changes to be committed:
        	modified:   menu.txt

        $ git commit --no-edit
        [main 56a9e35] Merge branch &#39;price-update&#39;
        $ git log --oneline --graph
        *   56a9e35 Merge branch &#39;price-update&#39;
        |\
        | * 0ee6afe Raise masala chai to 22
        * | a7e7c4d Sell masala chai in large size
        |/
        * e93823f Add menu</code></pre></div>
          <p>We decided to keep both. The regular price goes up to 22 <em>and</em> the large size is added. The <code>diff --cc</code> output is a "combined diff". It has two columns of <code>+</code>/<code>-</code>, one for each parent. <code>git commit --no-edit</code> uses the default merge message from Git.</p>
        </div>

        <div class="lc-card">
          <h3>Changed Your Mind? Abort</h3>
          <p>Is a conflict too confusing? You can go back to exactly how things were before the merge:</p>
          <div class="lc-code-block"><pre><code>$ git merge --abort
        $ git status
        On branch main
        nothing to commit, working tree clean</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Committing files that still contain <code>&lt;&lt;&lt;&lt;&lt;&lt;&lt;</code> markers. This breaks the code. Search for markers before <code>git add</code>.</li>
            <li>Keeping "my" side without thinking and throwing away the work of a teammate. First understand both changes. If you are unsure, ask the author.</li>
            <li>Forgetting <code>git add</code>. Then <code>git commit</code> says "Committing is not possible because you have unmerged files", and you wonder why.</li>
            <li>Starting a merge with uncommitted changes. This mixes your unsaved edits into the conflict.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Repeat the walkthrough: make two branches that change the same line of <code>menu.txt</code>.</li>
            <li>Merge, run <code>git status</code>, and open the file to find the markers.</li>
            <li>Resolve the conflict by combining both changes. Then run <code>git add</code> and <code>git commit</code>.</li>
            <li>Create a second conflict. This time, practise <code>git merge --abort</code> instead.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>VS Code highlights conflicts. It shows buttons like "Accept Current Change", "Accept Incoming Change" and "Accept Both Changes". It also has a 3-way merge editor. To avoid conflicts, keep branches short-lived and pull often. Also, do not reformat whole files in feature branches.</p></div>
      HTML
    },

    15 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Rebase, Interactive Rebase and Cherry-Pick</h1>
        </div>
        <p class="lc-lead"><code>git rebase</code> moves your branch so it starts from the latest commit of another branch. You get a clean, straight history, with no merge commit. Interactive rebase does more. It lets you tidy your commits before you share them.</p>

        <div class="lc-card">
          <h3>Merge vs Rebase</h3>
          <svg viewBox="0 0 620 200" width="100%" style="max-width:620px" role="img" aria-label="Before rebase, the feature branch starts from an old commit. After rebase, its commits are copied on top of main">
            <text x="10" y="20" fill="var(--txt2)" font-size="13" font-weight="600">Before</text>
            <line x1="40" y1="60" x2="150" y2="60" stroke="var(--txt3)" stroke-width="2"/>
            <circle cx="40" cy="60" r="12" fill="#f97316"/><circle cx="150" cy="60" r="12" fill="#f97316"/>
            <text x="150" y="40" text-anchor="middle" fill="var(--txt2)" font-size="11">main</text>
            <path d="M40 60 Q 60 110 95 110 L 200 110" fill="none" stroke="var(--txt3)" stroke-width="2"/>
            <circle cx="120" cy="110" r="12" fill="#9d5cf6"/><circle cx="200" cy="110" r="12" fill="#9d5cf6"/>
            <text x="200" y="140" text-anchor="middle" fill="var(--txt2)" font-size="11">feature</text>
            <text x="330" y="20" fill="var(--txt2)" font-size="13" font-weight="600">After git rebase main</text>
            <line x1="340" y1="80" x2="590" y2="80" stroke="var(--txt3)" stroke-width="2"/>
            <circle cx="340" cy="80" r="12" fill="#f97316"/><circle cx="420" cy="80" r="12" fill="#f97316"/>
            <circle cx="500" cy="80" r="12" fill="#9d5cf6"/><circle cx="580" cy="80" r="12" fill="#9d5cf6"/>
            <text x="420" y="60" text-anchor="middle" fill="var(--txt2)" font-size="11">main</text>
            <text x="580" y="110" text-anchor="middle" fill="var(--txt2)" font-size="11">feature</text>
            <text x="540" y="140" text-anchor="middle" fill="var(--txt3)" font-size="11">new copies, new hashes</text>
          </svg>
          <table class="lc-table">
            <thead><tr><th></th><th>git merge main</th><th>git rebase main</th></tr></thead>
            <tbody>
              <tr><td>History</td><td>Keeps the real shape and adds a merge commit</td><td>Straight line, no merge commit</td></tr>
              <tr><td>Rewrites commits?</td><td>No</td><td>Yes. Every moved commit gets a new hash</td></tr>
              <tr><td>Safe on shared branches?</td><td>Yes</td><td>No. Use it only on your own branch that nobody else uses</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Rebase a Feature Branch</h3>
          <p>You made two snack commits. At the same time, someone added a README to <code>main</code>:</p>
          <div class="lc-code-block"><pre><code>$ git log --oneline --graph --all
        * 09ad44f Add README
        | * cbd8134 Add kachori
        | * 4fc6e86 Add samosa
        |/
        * 7901826 Add menu</code></pre></div>
          <div class="lc-code-block"><pre><code>$ git rebase main
        Successfully rebased and updated refs/heads/feature/snacks.
        $ git log --oneline --graph --all
        * 5accefa Add kachori
        * a4dab79 Add samosa
        * 09ad44f Add README
        * 7901826 Add menu</code></pre></div>
          <p>Your two commits were <strong>replayed</strong> (applied again) on top of <code>Add README</code>. Compare the hashes: <code>4fc6e86</code> became <code>a4dab79</code>. They are new commits with the same changes. Now merging into <code>main</code> is a simple fast-forward:</p>
          <div class="lc-code-block"><pre><code>$ git switch main
        Switched to branch &#39;main&#39;
        $ git merge feature/snacks
        Updating 09ad44f..5accefa
        Fast-forward
         snacks.txt | 2 ++
         1 file changed, 2 insertions(+)
         create mode 100644 snacks.txt</code></pre></div>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: A Conflict During Rebase</h3>
          <p>Rebase applies your commits one at a time. So a conflict can stop it in the middle. Here, <code>main</code> raised the price to 25. Your branch added a student price on the same line:</p>
          <div class="lc-code-block"><pre><code>$ git rebase main
        Auto-merging menu.txt
        CONFLICT (content): Merge conflict in menu.txt
        error: could not apply a1bb572... Add student price
        hint: Resolve all conflicts manually, mark them as resolved with
        hint: &quot;git add/rm &lt;conflicted_files&gt;&quot;, then run &quot;git rebase --continue&quot;.
        hint: You can instead skip this commit: run &quot;git rebase --skip&quot;.
        hint: To abort and get back to the state before &quot;git rebase&quot;, run &quot;git rebase --abort&quot;.
        hint: Disable this message with &quot;git config set advice.mergeConflict false&quot;
        Could not apply a1bb572... # Add student price
        $ cat menu.txt
        &lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD
        Masala chai - 25
        =======
        Masala chai - 20 (students 15)
        &gt;&gt;&gt;&gt;&gt;&gt;&gt; a1bb572 (Add student price)
        $ printf &quot;Masala chai - 25 (students 18)\n&quot; &gt; menu.txt
        $ git add menu.txt
        $ git rebase --continue
        [detached HEAD 39098dc] Add student price
         1 file changed, 1 insertion(+), 1 deletion(-)
        Successfully rebased and updated refs/heads/feature/students.
        $ git log --oneline
        39098dc Add student price
        bc19bd0 Raise masala chai to 25
        7901826 Add menu</code></pre></div>
          <p>This works like a merge conflict. Fix the file, run <code>git add</code>, then run <code>git rebase --continue</code>. Git opens your editor for the commit message, so save and close it. You can also run <code>git rebase --skip</code> to drop this commit. Or run <code>git rebase --abort</code> to go back to where you started.</p>
        </div>

        <div class="lc-card">
          <h3>Interactive Rebase: Tidy Before You Share</h3>
          <p>Your branch has a messy "fix typo" commit. It should be part of the commit before it:</p>
          <div class="lc-code-block"><pre><code>$ git log --oneline main..
        5ceaeb2 fix typo
        657d218 Add vada pav</code></pre></div>
          <p>Run <code>git rebase -i main</code>. Git opens your editor with a <strong>todo list</strong> (a list of steps), oldest commit first. A long help comment follows it:</p>
          <div class="lc-code-block"><pre><code>pick 657d218 # Add vada pav
        pick 5ceaeb2 # fix typo</code></pre></div>
          <p>Change the second <code>pick</code> to <code>fixup</code>. Then save and close:</p>
          <div class="lc-code-block"><pre><code>pick 657d218 # Add vada pav
        fixup 5ceaeb2 # fix typo</code></pre></div>
          <div class="lc-code-block"><pre><code>$ git rebase -i main
        Successfully rebased and updated refs/heads/feature/snacks.
        $ git log --oneline main..
        91673de Add vada pav</code></pre></div>
          <p>Two commits became one clean commit.</p>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>pick</code></td><td>Keep the commit as it is</td></tr>
              <tr><td><code>reword</code></td><td>Keep it, but edit the message</td></tr>
              <tr><td><code>edit</code></td><td>Stop at this commit so you can change it</td></tr>
              <tr><td><code>squash</code></td><td>Combine with the previous commit and join both messages</td></tr>
              <tr><td><code>fixup</code></td><td>Combine with the previous commit and keep only the previous message</td></tr>
              <tr><td><code>drop</code></td><td>Remove the commit</td></tr>
            </tbody>
          </table>
          <p>If you change the order of the lines, the order of the commits changes too.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Copy One Commit with git cherry-pick</h3>
          <p>Sometimes you need only <strong>one</strong> commit from another branch. For example, you made a price fix on <code>feature/snacks</code>. It must go live on <code>main</code> today, but the snack work is not ready yet:</p>
          <div class="lc-code-block"><pre><code>$ git log --oneline --graph --all --decorate
        * c8eb937 (HEAD -&gt; feature/snacks) Add vada pav
        * 39b311e Fix ginger chai price
        * 7bd7b39 Add snacks
        * e93823f (main) Add menu</code></pre></div>
          <div class="lc-code-block"><pre><code>$ git switch main
        Switched to branch &#39;main&#39;
        $ git cherry-pick -x 39b311e
        [main ae31ff1] Fix ginger chai price
         Date: Tue Sep 1 10:10:00 2026 +0530
         1 file changed, 1 insertion(+), 1 deletion(-)
        $ git log --oneline --graph --all --decorate
        * ae31ff1 (HEAD -&gt; main) Fix ginger chai price
        | * c8eb937 (feature/snacks) Add vada pav
        | * 39b311e Fix ginger chai price
        | * 7bd7b39 Add snacks
        |/
        * e93823f Add menu
        $ git log -1 --format=%B
        Fix ginger chai price

        (cherry picked from commit 39b311e...)

        $ cat menu.txt
        Masala chai - 20
        Ginger chai - 30</code></pre></div>
          <ul class="lc-list">
            <li><code>git cherry-pick 39b311e</code> takes the changes of that one commit. It applies them on top of the current branch as a <strong>new commit</strong> (<code>ae31ff1</code>) with a new hash. The <code>Date:</code> line shows that it kept the original author date.</li>
            <li><code>-x</code> adds the line <code>(cherry picked from commit …)</code> to the message. Then reviewers can see where the fix came from. Use it when you copy between shared branches.</li>
            <li><code>Add snacks</code> and <code>Add vada pav</code> stayed on the feature branch.</li>
            <li>If the change conflicts, fix the file, run <code>git add</code>, and run <code>git cherry-pick --continue</code> (or <code>--abort</code>). This is the same pattern as rebase.</li>
          </ul>
          <p>In fact, a rebase is a series of cherry-picks that Git does for you. Use cherry-pick for a few chosen commits, like a hotfix or a commit made on the wrong branch. Use merge or rebase to bring over a whole branch.</p>
        </div>

        <div class="lc-card">
          <h3>The Golden Rule of Rebasing</h3>
          <p><strong>Never rebase commits that other people have already pulled.</strong> Rebasing replaces commits with new ones. Anyone who built on the old ones gets a confusing history with duplicate commits. Rebase only your own local or personal feature branches. Did you rebase a branch that you already pushed (and only you use it)? Then update the remote with <code>git push --force-with-lease</code>. It refuses to overwrite if someone else pushed in the meantime.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Rebasing <code>main</code> or another shared branch.</li>
            <li>Using <code>git push --force</code> instead of <code>--force-with-lease</code> after a rebase.</li>
            <li>Getting worried in the middle of a rebase. <code>git status</code> tells you where you are, and <code>git rebase --abort</code> always gets you out.</li>
            <li>Deleting lines in the todo list by mistake. This drops those commits. (The reflog in lesson 18 can bring them back.)</li>
            <li>Cherry-picking many commits from a branch, and later merging that branch too. Now the same change exists twice with different hashes. This can cause confusing conflicts.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create a branch with two commits. Then add a commit to <code>main</code>.</li>
            <li>Rebase the branch onto <code>main</code>. Compare <code>git log --oneline --graph --all</code> before and after.</li>
            <li>Add two small commits to the branch. Then use <code>git rebase -i main</code> to <code>fixup</code> the second one into the first.</li>
            <li>Fast-forward <code>main</code> to the branch with <code>git merge</code>.</li>
            <li>Make a new branch with two commits and switch back to <code>main</code>. Bring over only the second commit with <code>git cherry-pick -x &lt;hash&gt;</code>. Check <code>git log -1</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>These two work well together. Commit a small fix with <code>git commit --fixup &lt;hash&gt;</code>. Later, run <code>git rebase -i --autosquash main</code>. Git fills in the todo list with <code>fixup</code> in the right place for you.</p></div>
      HTML
    },

    16 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Stashing and Cleaning Work in Progress</h1>
        </div>
        <p class="lc-lead">You are halfway through a feature, and an urgent bug comes in. Your work is not ready to commit. But Git will not let you switch branches if your changes conflict. <code>git stash</code> saves your changes on a shelf (a temporary storage place). Then your working tree is clean.</p>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Stash, Fix, Pop</h3>
          <div class="lc-code-block"><pre><code>$ echo &quot;Cold coffee - 40&quot; &gt;&gt; menu.txt
        $ echo &quot;draft&quot; &gt; offers.txt
        $ git status -s
         M menu.txt
        ?? offers.txt
        $ git stash push -u -m &quot;cold coffee idea&quot;
        Saved working directory and index state On main: cold coffee idea
        $ git status -s
        $ git stash list
        stash@{0}: On main: cold coffee idea</code></pre></div>
          <ul class="lc-list">
            <li><code>push</code> saves your changes and cleans the working tree. (Plain <code>git stash</code> is short for <code>git stash push</code>.)</li>
            <li><code>-u</code> also stashes <strong>untracked</strong> files (files Git does not follow yet), like <code>offers.txt</code>. Without it, new files stay behind.</li>
            <li><code>-m</code> adds a label, so you remember what the stash is.</li>
          </ul>
          <p>Now the tree is clean. Fix the urgent problem and commit it:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;# Chai Menu (open daily)&quot; &gt; README.md
        $ git commit -am &quot;Update README&quot;
        [main d24a317] Update README
         1 file changed, 1 insertion(+), 1 deletion(-)</code></pre></div>
          <p>Then bring your work back:</p>
          <div class="lc-code-block"><pre><code>$ git stash pop
        On branch main
        Changes not staged for commit:
          (use &quot;git add &lt;file&gt;...&quot; to update what will be committed)
          (use &quot;git restore &lt;file&gt;...&quot; to discard changes in working directory)
        	modified:   menu.txt

        Untracked files:
          (use &quot;git add &lt;file&gt;...&quot; to include in what will be committed)
        	offers.txt

        no changes added to commit (use &quot;git add&quot; and/or &quot;git commit -a&quot;)
        Dropped refs/stash@{0} (ee171c5...)
        $ git stash list</code></pre></div>
          <p><code>pop</code> applies the changes again <em>and</em> deletes the stash entry. If the stash conflicts with new commits, Git keeps the entry. So you do not lose it.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Several Stashes</h3>
          <div class="lc-code-block"><pre><code>$ git stash push -m &quot;wip 1&quot;
        Saved working directory and index state On main: wip 1
        $ echo &quot;Tea bun - 10&quot; &gt; snacks.txt
        $ git stash push -u -m &quot;wip 2&quot;
        Saved working directory and index state On main: wip 2
        $ git stash list
        stash@{0}: On main: wip 2
        stash@{1}: On main: wip 1
        $ git stash show -p stash@{1}
        diff --git a/menu.txt b/menu.txt
        index 8cdd008..169cbd8 100644
        --- a/menu.txt
        +++ b/menu.txt
        @@ -1 +1,2 @@
         Masala chai - 20
        +Cold coffee - 40
        $ git stash apply stash@{1}
        On branch main
        Changes not staged for commit:
          (use &quot;git add &lt;file&gt;...&quot; to update what will be committed)
          (use &quot;git restore &lt;file&gt;...&quot; to discard changes in working directory)
        	modified:   menu.txt

        no changes added to commit (use &quot;git add&quot; and/or &quot;git commit -a&quot;)
        $ git stash drop stash@{1}
        Dropped stash@{1} (b3365c3...)
        $ git stash list
        stash@{0}: On main: wip 2</code></pre></div>
          <p>Stashes form a stack (a pile where the newest item is on top). <code>stash@{0}</code> is the newest. <code>show -p</code> shows a preview of a stash. <code>apply</code> applies it again but <em>keeps</em> the entry. <code>drop</code> deletes it.</p>
        </div>

        <div class="lc-card">
          <h3>Stash Commands</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td><code>git stash push -u -m "msg"</code></td><td>Save tracked + untracked changes with a label</td></tr>
              <tr><td><code>git stash list</code></td><td>Show all stashes</td></tr>
              <tr><td><code>git stash show -p stash@{1}</code></td><td>Show a preview of a stash as a diff</td></tr>
              <tr><td><code>git stash pop</code></td><td>Apply the newest stash and remove it</td></tr>
              <tr><td><code>git stash apply stash@{1}</code></td><td>Apply a stash and keep it</td></tr>
              <tr><td><code>git stash drop stash@{1}</code></td><td>Delete one stash</td></tr>
              <tr><td><code>git stash branch new-branch</code></td><td>Create a branch from the stash and apply it there</td></tr>
              <tr><td><code>git stash clear</code></td><td>Delete <strong>all</strong> stashes (be careful!)</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Removing Untracked Files with git clean</h3>
          <p>Stash <em>keeps</em> work for later. Sometimes you want the opposite. You want to throw away leftover untracked files, like test output, a build folder or drafts. <code>git clean</code> deletes files that Git is <strong>not tracking</strong>. You cannot undo it. So always do a dry run (a test that only lists what would happen) first. This practice repo has one commit with <code>menu.txt</code>. First we ignore <code>*.log</code> files (lesson 6). Then you can see how <code>git clean</code> treats ignored files:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;*.log&quot; &gt;&gt; .gitignore
        $ git add .gitignore
        $ git commit -q -m &quot;Ignore logs&quot;
        $ echo &quot;draft&quot; &gt; offers.txt
        $ mkdir build &amp;&amp; echo &quot;temp&quot; &gt; build/out.txt
        $ echo &quot;debug&quot; &gt; server.log
        $ echo &quot;Cold coffee - 40&quot; &gt;&gt; menu.txt
        $ git status -s
         M menu.txt
        ?? build/
        ?? offers.txt
        $ git clean -n
        Would remove offers.txt
        $ git clean -nd
        Would remove build/
        Would remove offers.txt
        $ git clean -fd
        Removing build/
        Removing offers.txt
        $ git status -s --ignored
         M menu.txt
        !! server.log
        $ git clean -ndx
        Would remove server.log</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td><code>git clean -n</code></td><td>Dry run: list the untracked <em>files</em> that would be removed</td></tr>
              <tr><td><code>git clean -nd</code></td><td>Dry run that also includes untracked <em>directories</em> (<code>build/</code>)</td></tr>
              <tr><td><code>git clean -fd</code></td><td>Really delete untracked files and directories (<code>-f</code> = force)</td></tr>
              <tr><td><code>git clean -ndx</code></td><td>Dry run that also includes <strong>ignored</strong> files like <code>server.log</code></td></tr>
              <tr><td><code>git clean -i</code></td><td>Interactive: choose what to delete from a menu</td></tr>
            </tbody>
          </table>
          <p>Notice what <code>git clean -fd</code> did <em>not</em> touch. It left the edit to the tracked <code>menu.txt</code> (use <code>git restore</code> for that, lesson 9). It also left the ignored <code>server.log</code>, which only <code>-x</code> removes. Without <code>-f</code>, Git refuses to delete anything, because <code>clean.requireForce</code> is on by default.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: A Second Working Folder with git worktree</h3>
          <p>Stashing is one way to handle an urgent fix. Another way is <code>git worktree</code>. It gives you a <strong>second folder</strong> linked to the same repository, with a different branch checked out. Your half-finished work stays exactly where it is:</p>
          <div class="lc-code-block"><pre><code>$ git status -s
         M snacks.txt
        $ git worktree add -b fix/ginger-price ../chai-hotfix main
        Preparing worktree (new branch &#39;fix/ginger-price&#39;)
        HEAD is now at e93823f Add menu
        $ git worktree list
        /home/asha/chai-menu   7bd7b39 [feature/snacks]
        /home/asha/chai-hotfix e93823f [fix/ginger-price]
        $ cd ../chai-hotfix
        $ sed -i.bak &quot;s/Ginger chai - 25/Ginger chai - 30/&quot; menu.txt &amp;&amp; rm menu.txt.bak
        $ git commit -am &quot;Fix ginger chai price&quot;
        [fix/ginger-price 46e7aee] Fix ginger chai price
         1 file changed, 1 insertion(+), 1 deletion(-)
        $ cd ../chai-menu
        $ git status -s
         M snacks.txt
        $ git log --oneline --all --graph
        * 46e7aee Fix ginger chai price
        | * 7bd7b39 Add snacks
        |/
        * e93823f Add menu
        $ git worktree remove ../chai-hotfix
        $ git worktree list
        /home/asha/chai-menu 7bd7b39 [feature/snacks]</code></pre></div>
          <ul class="lc-list">
            <li><code>git worktree add -b fix/ginger-price ../chai-hotfix main</code> creates the folder <code>../chai-hotfix</code>. It also creates a new branch that starts at <code>main</code>.</li>
            <li>Both folders share one <code>.git</code> history. So you can see the hotfix commit from the first folder right away. You do not need to push or fetch.</li>
            <li>The unfinished <code>snacks.txt</code> edit was never touched. <code>git worktree remove</code> deletes the extra folder. The branch and its commit stay.</li>
            <li>You can check out a branch in only one worktree at a time. People also use worktrees to run several AI coding agents at the same time, each in its own folder.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>-u</code>, so new files stay in the working tree.</li>
            <li>Using stash as long-term storage. Stashes are local, easy to forget, and never pushed. For anything longer than a day, commit on a branch.</li>
            <li>Running <code>git stash clear</code>, or <code>drop</code> on the wrong entry. Check <code>git stash list</code> first.</li>
            <li>Stashing ten times without <code>-m</code>, and then not knowing which stash is which.</li>
            <li>Running <code>git clean -fdx</code> without a dry run. It also deletes ignored files such as <code>.env</code> and <code>node_modules/</code>. Run <code>-n</code> first, every time.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Edit a tracked file and create a new file. Stash both with <code>git stash push -u -m "my experiment"</code>.</li>
            <li>Check that <code>git status -s</code> is empty. Then make and commit a small, unrelated fix.</li>
            <li>Run <code>git stash list</code>, then <code>git stash pop</code>. Check that your changes are back.</li>
            <li>Bonus: stash again. Use <code>git stash branch experiment</code> to turn the stash into a branch.</li>
            <li>Create an untracked file and an untracked folder. Preview with <code>git clean -nd</code>. Then remove them with <code>git clean -fd</code>.</li>
            <li>Keep some uncommitted work in progress. Create a worktree for a hotfix branch and commit there. Check <code>git worktree list</code>, then remove the worktree.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Often, a quick "work in progress" commit on your feature branch is better than a stash. It is safe and you can see it in the log. You can tidy it later with <code>--amend</code> or <code>rebase -i</code>.</p></div>
      HTML
    },

    17 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Undoing Commits: reset vs revert</h1>
        </div>
        <p class="lc-lead">There are two ways to undo a commit. <code>git reset</code> <strong>moves the branch back</strong>, as if the commit never happened. This is fine for local commits. <code>git revert</code> <strong>adds a new commit</strong> that reverses an old one. This is the safe choice for shared history.</p>

        <div class="lc-card">
          <h3>The Three Reset Modes</h3>
          <p>All three modes move the branch pointer to the commit you name. They differ in what happens to the staging area and to your files:</p>
          <table class="lc-table">
            <thead><tr><th>Mode</th><th>Branch moves?</th><th>Staging area</th><th>Your files</th><th>Typical use</th></tr></thead>
            <tbody>
              <tr><td><code>--soft</code></td><td>Yes</td><td>Kept (changes stay staged)</td><td>Kept</td><td>Redo the last commit(s) with a better message, or combine them</td></tr>
              <tr><td><code>--mixed</code> (default)</td><td>Yes</td><td>Reset (changes become unstaged)</td><td>Kept</td><td>Undo the commit and stage the changes in a different way</td></tr>
              <tr><td><code>--hard</code></td><td>Yes</td><td>Reset</td><td><strong>Reset. Changes are deleted</strong></td><td>Throw away commits and edits completely</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: The Three Modes</h3>
          <p>We start from three commits. We undo the last one (<code>Add snacks</code>) in three different ways. (Between each demo, we create the commit again.)</p>
          <div class="lc-code-block"><pre><code>$ git log --oneline
        9f319a1 Add snacks
        5c4d2ce Add ginger chai
        7901826 Add menu</code></pre></div>
          <h4>--soft: undo the commit, keep the changes staged</h4>
          <div class="lc-code-block"><pre><code>$ git reset --soft HEAD~1
        $ git log --oneline
        5c4d2ce Add ginger chai
        7901826 Add menu
        $ git status -s
        A  snacks.txt</code></pre></div>
          <p>The commit is gone from the log. But <code>A&nbsp; snacks.txt</code> is still staged. Run <code>git commit</code> again to redo it.</p>
          <h4>--mixed (the default): undo the commit and unstage</h4>
          <div class="lc-code-block"><pre><code>$ git reset HEAD~1
        $ git status -s
        ?? snacks.txt</code></pre></div>
          <p><code>snacks.txt</code> is still on disk, but now it is untracked. For modified files, Git would also print "Unstaged changes after reset:" and list them.</p>
          <h4>--hard: undo the commit and delete the changes</h4>
          <div class="lc-code-block"><pre><code>$ git reset --hard HEAD~1
        HEAD is now at 5c4d2ce Add ginger chai
        $ git status -s
        $ ls
        menu.txt</code></pre></div>
          <p><code>snacks.txt</code> is gone from disk. Any <em>uncommitted</em> edits are lost forever. You can still rescue committed work with the reflog (next lesson).</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: git revert</h3>
          <p>Take a fresh copy with the same three commits. Suppose <code>Add ginger chai</code> was a mistake, and you already pushed it:</p>
          <div class="lc-code-block"><pre><code>$ git revert --no-edit HEAD~1
        [main e4467f1] Revert &quot;Add ginger chai&quot;
         Date: Tue Sep 1 10:10:00 2026 +0530
         1 file changed, 1 deletion(-)
        $ git log --oneline
        e4467f1 Revert &quot;Add ginger chai&quot;
        9f319a1 Add snacks
        5c4d2ce Add ginger chai
        7901826 Add menu
        $ cat menu.txt
        Masala chai - 20</code></pre></div>
          <p>History was <strong>not</strong> rewritten. A new commit, <code>Revert "Add ginger chai"</code>, removes the line. Everyone can simply pull it. The later <code>Add snacks</code> commit is not touched. (<code>--no-edit</code> accepts the default message. Without it, Git opens your editor.)</p>
        </div>

        <div class="lc-card">
          <h3>Decision Guide</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>Uncommitted edits to one file</td><td><code>git restore file</code> (lesson 9)</td></tr>
              <tr><td>Last commit is not pushed, and has a wrong message or a missing file</td><td><code>git commit --amend</code></td></tr>
              <tr><td>Local commits I want to redo</td><td><code>git reset --soft</code> or <code>--mixed</code></td></tr>
              <tr><td>Local commits and edits I want to throw away</td><td><code>git reset --hard</code> (check twice)</td></tr>
              <tr><td>A commit already pushed to a shared branch</td><td><code>git revert &lt;commit&gt;</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>reset --hard</code> when you meant <code>--soft</code>. Always run <code>git status</code> first, and know what you will lose.</li>
            <li>Resetting a branch that is already pushed, then force-pushing over the work of teammates. Use <code>revert</code> on shared branches.</li>
            <li>Thinking that <code>revert</code> "goes back to" a commit. It undoes <em>only</em> the changes of the commit you name.</li>
            <li>Reverting a merge commit without <code>-m 1</code>. Git needs to know which parent is the main line, so it stops with an error.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Make three commits. Run <code>git reset --soft HEAD~1</code> and check <code>git status -s</code>. Commit again.</li>
            <li>Run <code>git reset HEAD~1</code> and check again. What is different?</li>
            <li>Commit again, then run <code>git reset --hard HEAD~1</code>. Where did the file go?</li>
            <li>Make two new commits. Undo the <em>older</em> one with <code>git revert --no-edit HEAD~1</code>. Check the log and the file contents.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>An easy way to remember: <strong>soft</strong> keeps everything staged, <strong>mixed</strong> keeps your files, and <strong>hard</strong> keeps nothing. <strong>revert</strong> is the only one that is safe for the work of your teammates.</p></div>
      HTML
    },

    18 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Recovering Work with reflog and bisect</h1>
        </div>
        <p class="lc-lead">This lesson shows two rescue tools. <code>git reflog</code> remembers every place <code>HEAD</code> has been. So you can get commits back after a bad reset or a deleted branch. <code>git bisect</code> uses binary search (checking the middle, again and again) to find the exact commit that added a bug.</p>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Undo a Bad reset --hard</h3>
          <p>Oops, we reset two commits too far. <code>git log</code> does not show them any more:</p>
          <div class="lc-code-block"><pre><code>$ git reset --hard HEAD~2
        HEAD is now at 7901826 Add menu
        $ git log --oneline
        7901826 Add menu
        $ git reflog
        7901826 HEAD@{0}: reset: moving to HEAD~2
        9f319a1 HEAD@{1}: commit: Add snacks
        5c4d2ce HEAD@{2}: commit: Add ginger chai
        7901826 HEAD@{3}: commit (initial): Add menu
        $ git reset --hard HEAD@{1}
        HEAD is now at 9f319a1 Add snacks
        $ git log --oneline
        9f319a1 Add snacks
        5c4d2ce Add ginger chai
        7901826 Add menu</code></pre></div>
          <ul class="lc-list">
            <li>Each reflog line is a place where <code>HEAD</code> was. <code>HEAD@{0}</code> is now, <code>HEAD@{1}</code> is one move ago, and so on.</li>
            <li><code>HEAD@{1}</code> is where we were just before the reset. So resetting to it brings everything back.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Recover a Deleted Branch</h3>
          <p>We deleted branch <code>temp</code> with <code>-D</code>, including its unmerged "Add lassi" commit. Git even printed the hash that the branch pointed to:</p>
          <div class="lc-code-block"><pre><code>$ git branch -D temp
        Deleted branch temp (was 00deda9).
        $ git reflog -3
        9f319a1 HEAD@{0}: checkout: moving from temp to main
        00deda9 HEAD@{1}: commit: Add lassi
        9f319a1 HEAD@{2}: checkout: moving from main to temp
        $ git branch temp 00deda9
        $ git log --oneline -1 temp
        00deda9 Add lassi</code></pre></div>
          <p>Create a branch at the old hash, and the branch comes back completely.</p>
        </div>

        <div class="lc-card">
          <h3>What the Reflog Can and Cannot Save</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Can you get it back?</th></tr></thead>
            <tbody>
              <tr><td>Commits removed by <code>reset --hard</code>, <code>rebase</code> or <code>--amend</code></td><td>Yes</td></tr>
              <tr><td>A deleted branch, if you made its commits on this computer</td><td>Yes</td></tr>
              <tr><td>Edits you never committed (or stashed)</td><td><strong>No</strong>. Git never saw them</td></tr>
              <tr><td>Very old entries</td><td>Usually no. Entries expire, by default after 90 days. For commits that no branch points to, they expire after 30 days</td></tr>
            </tbody>
          </table>
          <p>The reflog is <strong>local</strong>. It is never pushed, and a fresh clone starts with an empty reflog.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Find a Bug with git bisect</h3>
          <p>The price file used to say <code>20</code>. Now it says <code>0</code>. Something broke somewhere in eight commits:</p>
          <div class="lc-code-block"><pre><code>$ git log --oneline
        e5b9264 Add note 6
        ef98e49 Add note 5
        b67b16c Add note 4
        170d442 Refactor pricing
        57bc922 Add note 3
        da29559 Add note 2
        e69a32d Add note 1
        1dd4d18 Set price to 20</code></pre></div>
          <p>Tell Git one bad commit (now) and one good commit (the first one). Then Git checks out commits for you, and you test each one:</p>
          <div class="lc-code-block"><pre><code>$ git bisect start
        status: waiting for both &#39;good&#39; and &#39;bad&#39; commits
        $ git bisect bad
        status: waiting for &#39;good&#39; commit(s), &#39;bad&#39; commit known
        $ git bisect good HEAD~7
        Bisecting: 3 revisions left to test after this (roughly 2 steps)
        [57bc922...] Add note 3
        $ cat price.txt
        20
        $ git bisect good
        Bisecting: 1 revision left to test after this (roughly 1 step)
        [b67b16c...] Add note 4
        $ cat price.txt
        0
        $ git bisect bad
        Bisecting: 0 revisions left to test after this (roughly 0 steps)
        [170d442...] Refactor pricing
        $ cat price.txt
        0
        $ git bisect bad
        170d442... is the first &#39;bad&#39; commit
        commit 170d442...
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:15:00 2026 +0530

            Refactor pricing

         price.txt | 2 +-
         1 file changed, 1 insertion(+), 1 deletion(-)
        $ git bisect reset
        Previous HEAD position was 170d442 Refactor pricing
        Switched to branch &#39;main&#39;</code></pre></div>
          <p>Each time, Git checked the middle commit. This cut the search in half. With 1,000 commits, you would need only about 10 tests. Always finish with <code>git bisect reset</code> to go back to your branch.</p>
        </div>

        <div class="lc-card">
          <h3>Automatic bisect</h3>
          <p>Maybe a command can test for the bug. Exit code 0 means good. Exit codes 1–127, except 125, mean bad. Then Git can run the whole search for you. You can pass the bad and good commits directly to <code>start</code>:</p>
          <div class="lc-code-block"><pre><code>$ git bisect start HEAD HEAD~7
        Bisecting: 3 revisions left to test after this (roughly 2 steps)
        [57bc922...] Add note 3
        $ git bisect run grep -q 20 price.txt
        running &#39;grep&#39; &#39;-q&#39; &#39;20&#39; &#39;price.txt&#39;
        Bisecting: 1 revision left to test after this (roughly 1 step)
        [b67b16c...] Add note 4
        running &#39;grep&#39; &#39;-q&#39; &#39;20&#39; &#39;price.txt&#39;
        Bisecting: 0 revisions left to test after this (roughly 0 steps)
        [170d442...] Refactor pricing
        running &#39;grep&#39; &#39;-q&#39; &#39;20&#39; &#39;price.txt&#39;
        170d442... is the first &#39;bad&#39; commit
        commit 170d442...
        Author: Asha Rao &lt;asha@example.com&gt;
        Date:   Tue Sep 1 10:15:00 2026 +0530

            Refactor pricing

         price.txt | 2 +-
         1 file changed, 1 insertion(+), 1 deletion(-)
        bisect found first &#39;bad&#39; commit
        $ git bisect reset
        Previous HEAD position was 170d442 Refactor pricing
        Switched to branch &#39;main&#39;</code></pre></div>
          <p>Here, <code>grep -q 20 price.txt</code> succeeds only when the correct price is there. In real projects, the command is usually your test suite, for example <code>git bisect run pytest tests/test_price.py</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Giving up on "lost" commits without checking <code>git reflog</code> first.</li>
            <li>Running more dangerous commands while you try to recover. Stop and read the reflog. Then reset or create a branch at the right entry.</li>
            <li>Marking a commit good or bad without really testing it. One wrong answer sends bisect to the wrong commit.</li>
            <li>Forgetting <code>git bisect reset</code>, and then continuing to work in detached HEAD.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Make three commits, then run <code>git reset --hard HEAD~2</code>. Get them back using <code>git reflog</code>.</li>
            <li>Create a branch with one commit and delete it with <code>-D</code>. Get it back with <code>git branch name &lt;hash&gt;</code>.</li>
            <li>Build the bisect demo. Make a <code>price.txt</code> that is correct at first and "breaks" in the middle of eight commits.</li>
            <li>Find the bad commit with manual <code>git bisect</code>. Then find it again with <code>git bisect run</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Before any risky command, like a big rebase or reset, create a backup branch: <code>git branch backup-before-rebase</code>. It costs nothing. You can delete it when everything is fine.</p></div>
      HTML
    },

    19 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Remote Repositories: clone, remote and push</h1>
        </div>
        <p class="lc-lead">A <strong>remote</strong> is another copy of your repository that your team shares. It is usually on GitHub. You <strong>push</strong> your commits to it. You <strong>clone</strong> it to get a full copy on a new computer.</p>

        <div class="lc-card">
          <h3>Key Words</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>origin</code></td><td>The default name for the main remote. It is just a short name for a URL</td></tr>
              <tr><td><code>origin/main</code></td><td>A <strong>remote-tracking branch</strong>. It is your local record of where <code>main</code> was on origin the last time you connected to it</td></tr>
              <tr><td>upstream (tracking) branch</td><td>The remote branch that your local branch pushes to and pulls from</td></tr>
              <tr><td>HTTPS URL</td><td><code>https://github.com/asha/chai-menu.git</code>. You sign in with a token or Git Credential Manager</td></tr>
              <tr><td>SSH URL</td><td><code>git@github.com:asha/chai-menu.git</code>. You sign in with an SSH key</td></tr>
            </tbody>
          </table>
          <p>GitHub does <strong>not</strong> accept your account password for Git over HTTPS. The GitHub course shows how to sign in. You can use Git Credential Manager, a personal access token, SSH keys or <code>gh auth login</code>.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Connect and Push</h3>
          <p>First, create an <strong>empty</strong> repository on GitHub (no README). Then run this in your local project:</p>
          <div class="lc-code-block"><pre><code>$ git remote -v
        $ git remote add origin https://github.com/asha/chai-menu.git
        $ git remote -v
        origin	https://github.com/asha/chai-menu.git (fetch)
        origin	https://github.com/asha/chai-menu.git (push)</code></pre></div>
          <div class="lc-code-block"><pre><code>$ git push -u origin main
        To https://github.com/asha/chai-menu.git
         * [new branch]      main -&gt; main
        branch &#39;main&#39; set up to track &#39;origin/main&#39;.
        $ git status
        On branch main
        Your branch is up to date with &#39;origin/main&#39;.

        nothing to commit, working tree clean
        $ git branch -vv
        * main 44ad7dd [origin/main] Add README</code></pre></div>
          <ul class="lc-list">
            <li><code>-u</code> (<code>--set-upstream</code>) links local <code>main</code> to <code>origin/main</code>. After this, plain <code>git push</code> and <code>git pull</code> know where to go.</li>
            <li><code>git branch -vv</code> shows the link in square brackets.</li>
            <li>On a real GitHub push, you will also see progress lines like <code>Enumerating objects: 6, done.</code> and <code>Writing objects: 100% ...</code>. They appear before the <code>To</code> line. Their numbers change each time.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Clone</h3>
          <p>Ravi wants the project on his laptop:</p>
          <div class="lc-code-block"><pre><code>$ cd ~ &amp;&amp; git clone https://github.com/asha/chai-menu.git ravi-copy
        Cloning into &#39;ravi-copy&#39;...
        $ cd ravi-copy &amp;&amp; git log --oneline &amp;&amp; git remote -v
        44ad7dd Add README
        7901826 Add menu
        origin	https://github.com/asha/chai-menu.git (fetch)
        origin	https://github.com/asha/chai-menu.git (push)</code></pre></div>
          <p><code>git clone</code> downloads the whole history. It sets up <code>origin</code> and checks out <code>main</code>. You do not need <code>git init</code>. (Over the network, it also prints progress lines such as <code>Receiving objects: 100%</code>.) If you leave out the last argument, the folder gets the name of the repository.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Push a New Branch</h3>
          <div class="lc-code-block"><pre><code>$ git switch -c feature/snacks
        Switched to a new branch &#39;feature/snacks&#39;
        $ echo &quot;Samosa - 15&quot; &gt; snacks.txt
        $ git add snacks.txt &amp;&amp; git commit -m &quot;Add snacks list&quot;
        [feature/snacks 3007236] Add snacks list
         1 file changed, 1 insertion(+)
         create mode 100644 snacks.txt
        $ git push -u origin feature/snacks
        To https://github.com/asha/chai-menu.git
         * [new branch]      feature/snacks -&gt; feature/snacks
        branch &#39;feature/snacks&#39; set up to track &#39;origin/feature/snacks&#39;.
        $ git branch -r
          origin/feature/snacks
          origin/main</code></pre></div>
          <p>Each new branch needs <code>-u</code> on its first push. GitHub then usually prints a <code>remote:</code> message. It has a link to open a pull request for the branch. <code>git branch -r</code> lists remote-tracking branches.</p>
        </div>

        <div class="lc-card">
          <h3>Managing Remotes</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td><code>git remote -v</code></td><td>List remotes and their URLs</td></tr>
              <tr><td><code>git remote add name url</code></td><td>Add a remote</td></tr>
              <tr><td><code>git remote set-url origin new-url</code></td><td>Change a URL (for example, switch HTTPS → SSH)</td></tr>
              <tr><td><code>git remote rename old new</code></td><td>Rename a remote</td></tr>
              <tr><td><code>git remote remove name</code></td><td>Remove a remote</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: A Repository Inside a Repository with Submodules</h3>
          <p>Sometimes a project needs code from another repository that is built separately. An example is a shared <code>tea-utils</code> library. A <strong>submodule</strong> stores a link to that repository <em>and one exact commit of it</em>:</p>
          <div class="lc-code-block"><pre><code>$ git submodule add https://github.com/asha/tea-utils.git libs/tea-utils
        Cloning into &#39;/home/asha/chai-menu/libs/tea-utils&#39;...
        $ cat .gitmodules
        [submodule &quot;libs/tea-utils&quot;]
        	path = libs/tea-utils
        	url = https://github.com/asha/tea-utils.git
        $ git status -s
        A  .gitmodules
        A  libs/tea-utils
        $ git commit -q -m &quot;Add tea-utils as a submodule&quot;
        $ git submodule status
         d42af36... libs/tea-utils (heads/main)</code></pre></div>
          <p><code>.gitmodules</code> records the URL and the path. The main repository stores only the commit hash of the submodule, not its files. When someone clones the project, the submodule folder stays empty until they ask for it. (Here, a teammate clones our folder. Real clones from GitHub also print progress lines.)</p>
          <div class="lc-code-block"><pre><code>$ cd ..
        $ git clone -q chai-menu chai-copy
        $ ls chai-copy/libs/tea-utils
        $ cd chai-copy
        $ git submodule update --init
        Submodule &#39;libs/tea-utils&#39; (https://github.com/asha/tea-utils.git) registered for path &#39;libs/tea-utils&#39;
        Cloning into &#39;/home/asha/chai-copy/libs/tea-utils&#39;...
        Submodule path &#39;libs/tea-utils&#39;: checked out &#39;d42af36...&#39;
        $ ls libs/tea-utils
        gst.py</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Command</th></tr></thead>
            <tbody>
              <tr><td>Clone a project and its submodules</td><td><code>git clone --recurse-submodules url</code></td></tr>
              <tr><td>Fill submodules after a normal clone</td><td><code>git submodule update --init</code></td></tr>
              <tr><td>Move a submodule to its newest commit</td><td><code>git submodule update --remote libs/tea-utils</code>, then commit the change</td></tr>
              <tr><td>See which commit each submodule uses</td><td><code>git submodule status</code></td></tr>
            </tbody>
          </table>
          <p>Submodules are good for shared code that must stay fixed to an exact version. For normal libraries, a package manager (pip, npm) is usually simpler.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Creating the GitHub repo <em>with</em> a README, then pushing an existing local repo. GitHub rejects the push because the histories are different. Create the repo empty, or pull first.</li>
            <li><code>error: remote origin already exists</code>. Use <code>git remote set-url origin &lt;url&gt;</code> instead of adding it again.</li>
            <li>Typing your GitHub password when Git asks. It will fail. Use a token, Git Credential Manager or SSH.</li>
            <li>Running <code>git clone</code> inside another repository. This creates a repo inside a repo.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Create an empty repository on GitHub named <code>chai-menu</code>.</li>
            <li>Add it as <code>origin</code> in your local project. Push <code>main</code> with <code>-u</code>.</li>
            <li>Create a branch, commit, and push it with <code>-u</code>. Find it in the branch list on GitHub.</li>
            <li>Clone the repository into a different folder. Run <code>git log --oneline</code> there.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Remember: <code>origin/main</code> is only a snapshot from the last time you connected to GitHub. It does not update by itself. The next lesson shows how <code>git fetch</code> updates it.</p></div>
      HTML
    },

    20 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Fetching, Pulling and Staying in Sync</h1>
        </div>
        <p class="lc-lead">When teammates push, your copy gets out of date. <code>git fetch</code> downloads their commits without touching your work. <code>git pull</code> downloads them <em>and</em> adds them into your branch.</p>

        <div class="lc-card">
          <h3>fetch vs pull</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">GitHub<small>origin</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">git fetch<small>updates origin/main</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">merge or rebase<small>updates your main</small></div>
          </div>
          <p><code>git pull</code> = <code>git fetch</code> + integrate (combine). It uses a merge by default, or a rebase if you choose. Fetch is always safe. Pull changes your branch.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Fetch, Inspect, Pull</h3>
          <p>Ravi pushed a commit to the <code>tiffin</code> repository. On the computer of Asha:</p>
          <div class="lc-code-block"><pre><code>$ git fetch
        From https://github.com/asha/tiffin
           a3cdf77..ed0e54c  main       -&gt; origin/main
        $ git status
        On branch main
        Your branch is behind &#39;origin/main&#39; by 1 commit, and can be fast-forwarded.
          (use &quot;git pull&quot; to update your local branch)

        nothing to commit, working tree clean
        $ git log --oneline main..origin/main
        ed0e54c Add dosa
        $ git pull
        Updating a3cdf77..ed0e54c
        Fast-forward
         menu.txt | 1 +
         1 file changed, 1 insertion(+)</code></pre></div>
          <p><code>fetch</code> moved <code>origin/main</code> forward. <code>git status</code> compares your branch with it and says "behind by 1 commit". <code>main..origin/main</code> lists commits that are on origin but not yet in your <code>main</code>. Asha had no new local commits, so <code>pull</code> was a fast-forward.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: A Rejected Push</h3>
          <p>Now both people commit at the same time. Ravi pushes first. Then Asha tries:</p>
          <div class="lc-code-block"><pre><code>$ echo &quot;# Tiffin Centre&quot; &gt; README.md
        $ git add README.md &amp;&amp; git commit -m &quot;Add README&quot;
        [main d0b2544] Add README
         1 file changed, 1 insertion(+)
         create mode 100644 README.md
        $ git push
        To https://github.com/asha/tiffin.git
         ! [rejected]        main -&gt; main (fetch first)
        error: failed to push some refs to &#39;https://github.com/asha/tiffin.git&#39;
        hint: Updates were rejected because the remote contains work that you do not
        hint: have locally. This is usually caused by another repository pushing to
        hint: the same ref. If you want to integrate the remote changes, use
        hint: &#39;git pull&#39; before pushing again.
        hint: See the &#39;Note about fast-forwards&#39; in &#39;git push --help&#39; for details.</code></pre></div>
          <p>Git refuses, because the push would erase the commit of Ravi. Asha must add his work first. In recent Git versions, a plain <code>pull</code> on branches that have split apart asks you to choose how:</p>
          <div class="lc-code-block"><pre><code>$ git pull
        From https://github.com/asha/tiffin
           ed0e54c..e244adf  main       -&gt; origin/main
        hint: You have divergent branches and need to specify how to reconcile them.
        hint: You can do so by running one of the following commands sometime before
        hint: your next pull:
        hint:
        hint:   git config pull.rebase false  # merge
        hint:   git config pull.rebase true   # rebase
        hint:   git config pull.ff only       # fast-forward only
        hint:
        hint: You can replace &quot;git config&quot; with &quot;git config --global&quot; to set a default
        hint: preference for all repositories. You can also pass --rebase, --no-rebase,
        hint: or --ff-only on the command line to override the configured default per
        hint: invocation.
        fatal: Need to specify how to reconcile divergent branches.</code></pre></div>
          <p>Choose once, for all your repos (globally). Many teams prefer rebase for local work, because it gives a straight history: <code>git config --global pull.rebase true</code>. For this one pull, we pass <code>--rebase</code> directly:</p>
          <div class="lc-code-block"><pre><code>$ git pull --rebase
        Successfully rebased and updated refs/heads/main.
        $ git log --oneline --graph
        * 9fd263f Add README
        * e244adf Add upma
        * ed0e54c Add dosa
        * a3cdf77 Add menu
        $ git push
        To https://github.com/asha/tiffin.git
           e244adf..9fd263f  main -&gt; main</code></pre></div>
          <p>The commit of Asha was replayed on top of the commits of Ravi. Now the push works. If the same lines had changed, you would resolve a conflict, as in lessons 14–15.</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Pushing Tags</h3>
          <p><code>git push</code> does not push tags. Push them by name. Or push all annotated tags on pushed commits with <code>git push --follow-tags</code>:</p>
          <div class="lc-code-block"><pre><code>$ git tag -a v1.0.0 -m &quot;Tiffin menu v1&quot;
        $ git push origin v1.0.0
        To https://github.com/asha/tiffin.git
         * [new tag]         v1.0.0 -&gt; v1.0.0
        $ git ls-remote --tags origin
        212a808...	refs/tags/v1.0.0
        9fd263f...	refs/tags/v1.0.0^{}</code></pre></div>
          <p><code>ls-remote</code> lists what the remote really has. The <code>^{}</code> line is the commit that the annotated tag points to.</p>
        </div>

        <div class="lc-card">
          <h3>Pull Options at a Glance</h3>
          <table class="lc-table">
            <thead><tr><th>Setting / flag</th><th>Behaviour when branches have split apart</th></tr></thead>
            <tbody>
              <tr><td><code>pull.rebase false</code> / <code>--no-rebase</code></td><td>Create a merge commit</td></tr>
              <tr><td><code>pull.rebase true</code> / <code>--rebase</code></td><td>Replay your local commits on top</td></tr>
              <tr><td><code>pull.ff only</code> / <code>--ff-only</code></td><td>Refuse. Only fast-forward updates are allowed</td></tr>
            </tbody>
          </table>
          <p><code>git fetch --prune</code> also removes remote-tracking branches that were deleted on GitHub. This happens, for example, after a pull request was merged.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>"Fixing" a rejected push with <code>git push --force</code>. This deletes the commits of your teammate from the remote. Pull first. If you must force-push your own branch, use <code>--force-with-lease</code>.</li>
            <li>Working all day without pulling, and then getting a huge conflict. Pull (or fetch) at the start of each session.</li>
            <li>Pulling with uncommitted changes. Commit or stash first.</li>
            <li>Thinking that <code>git fetch</code> changed your files. It only updates <code>origin/*</code> branches.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Clone your GitHub repository into a second folder. Imagine it is the laptop of a teammate.</li>
            <li>Commit and push from the second folder. In the first folder, run <code>git fetch</code> and <code>git status</code>. Then run <code>git pull</code>.</li>
            <li>Make different commits in both folders. Push from one folder. See the rejection in the other. Fix it with <code>git pull --rebase</code> and push.</li>
            <li>Create an annotated tag and push it. Check that it appears under "Tags" on GitHub.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>A safe daily routine: <code>git switch main</code> → <code>git pull</code> → <code>git switch -c feature/x</code> → work and commit → <code>git push -u origin feature/x</code> → open a pull request.</p></div>
      HTML
    },

    21 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Automating Checks with Git Hooks</h1>
        </div>
        <p class="lc-lead">A <strong>hook</strong> is a script that Git runs by itself at a certain moment. For example, it can run just before Git creates a commit. If the script fails, Git stops. Teams use hooks to catch problems <em>before</em> they reach GitHub. Examples are secrets, badly formatted code and unclear commit messages.</p>

        <div class="lc-card">
          <h3>The Hooks You Will Use Most</h3>
          <table class="lc-table">
            <thead><tr><th>Hook</th><th>Runs</th><th>Typical use</th><th>Can it stop Git?</th></tr></thead>
            <tbody>
              <tr><td><code>pre-commit</code></td><td>Before Git asks for the commit message</td><td>Run a linter (a code checker) or formatter, block secrets</td><td>Yes (exit with a non-zero code)</td></tr>
              <tr><td><code>commit-msg</code></td><td>After you write the message. It gets the message file as <code>$1</code></td><td>Make sure the message follows a format</td><td>Yes</td></tr>
              <tr><td><code>pre-push</code></td><td>Before <code>git push</code> sends anything</td><td>Run the test suite</td><td>Yes</td></tr>
              <tr><td><code>post-commit</code>, <code>post-merge</code></td><td>After the action is finished</td><td>Notifications, installing packages again</td><td>No</td></tr>
              <tr><td><code>pre-receive</code></td><td>On the <strong>server</strong>, when a push arrives</td><td>Rules on the server (GitHub uses rulesets instead)</td><td>Yes</td></tr>
            </tbody>
          </table>
          <p>Hooks are stored in <code>.git/hooks/</code>. Every new repository gets some examples there:</p>
          <div class="lc-code-block"><pre><code>$ ls .git/hooks
        applypatch-msg.sample
        commit-msg.sample
        fsmonitor-watchman.sample
        post-update.sample
        pre-applypatch.sample
        pre-commit.sample
        pre-merge-commit.sample
        pre-push.sample
        pre-rebase.sample
        pre-receive.sample
        prepare-commit-msg.sample
        push-to-checkout.sample
        sendemail-validate.sample
        update.sample</code></pre></div>
          <p>Git ignores files that end in <code>.sample</code>. A hook runs only if a file with the exact hook name (no extension) exists and is <strong>executable</strong> (allowed to run as a program).</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: A pre-commit Hook That Blocks Secrets</h3>
          <div class="lc-code-block"><pre><code>$ cat &gt; .git/hooks/pre-commit &lt;&lt;&#39;EOF&#39;
        #!/bin/sh
        # Block commits whose staged changes add a line containing API_KEY=
        if git diff --cached -U0 | grep -q &#39;^+.*API_KEY=&#39;; then
          echo &quot;pre-commit: staged changes contain API_KEY= . Remove the secret first.&quot;
          exit 1
        fi
        EOF
        $ chmod +x .git/hooks/pre-commit
        $ echo &quot;API_KEY=sk-live-12345&quot; &gt; config.txt
        $ git add config.txt
        $ git commit -m &quot;Add config&quot;
        pre-commit: staged changes contain API_KEY= . Remove the secret first.
        $ git log --oneline
        7901826 Add menu
        $ echo &quot;API_URL=https://api.example.com&quot; &gt; config.txt
        $ git add config.txt
        $ git commit -m &quot;Add config&quot;
        [main 25722e1] Add config
         1 file changed, 1 insertion(+)
         create mode 100644 config.txt</code></pre></div>
          <ul class="lc-list">
            <li><code>git diff --cached -U0</code> shows only the staged changes. Lines that start with <code>+</code> are being added.</li>
            <li>The hook printed its message and exited with <code>1</code>. So Git did <strong>not</strong> create the commit. The log still has only "Add menu". The file stays staged, so you can fix it.</li>
            <li>We replace the secret with a harmless setting. Then the same commit command works.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: A commit-msg Hook and --no-verify</h3>
          <div class="lc-code-block"><pre><code>$ cat &gt; .git/hooks/commit-msg &lt;&lt;&#39;EOF&#39;
        #!/bin/sh
        # $1 is the file that holds the commit message
        if ! head -n 1 &quot;$1&quot; | grep -Eq &#39;^(feat|fix|docs|chore|test): .{3,}&#39;; then
          echo &quot;commit-msg: start the message with feat:, fix:, docs:, chore: or test:&quot;
          exit 1
        fi
        EOF
        $ chmod +x .git/hooks/commit-msg
        $ echo &quot;Ginger chai - 25&quot; &gt;&gt; menu.txt
        $ git commit -am &quot;stuff&quot;
        commit-msg: start the message with feat:, fix:, docs:, chore: or test:
        $ git commit -am &quot;feat: add ginger chai&quot;
        [main db66505] feat: add ginger chai
         1 file changed, 1 insertion(+)
        $ git commit --allow-empty -m &quot;oops&quot; --no-verify
        [main 5ece8ae] oops
        $ git log --oneline
        5ece8ae oops
        db66505 feat: add ginger chai
        25722e1 Add config
        7901826 Add menu</code></pre></div>
          <p>The <code>commit-msg</code> hook reads the first line of the message from the file named in <code>$1</code>. It rejects "stuff". The prefixes <code>feat:</code>, <code>fix:</code>, <code>docs:</code> follow the popular <strong>Conventional Commits</strong> style. <code>--no-verify</code> (short: <code>-n</code>) skips the <code>pre-commit</code> and <code>commit-msg</code> hooks. That is how "oops" got in. (<code>--allow-empty</code> only lets us commit without changes for this demo.)</p>
        </div>

        <div class="lc-card">
          <h3>Terminal Walkthrough: Share a Hook with Your Team</h3>
          <p>The <code>.git</code> folder is never pushed. So hooks in <code>.git/hooks</code> stay on your laptop. To share one, commit the script in the project and point Git to it. Since Git 2.54, you can define hooks in <code>git config</code>:</p>
          <div class="lc-code-block"><pre><code>$ rm .git/hooks/pre-commit .git/hooks/commit-msg
        $ mkdir -p scripts
        $ cat &gt; scripts/check-secrets.sh &lt;&lt;&#39;EOF&#39;
        #!/bin/sh
        if git diff --cached -U0 | grep -q &#39;^+.*API_KEY=&#39;; then
          echo &quot;check-secrets: staged changes contain API_KEY= . Commit blocked.&quot;
          exit 1
        fi
        EOF
        $ chmod +x scripts/check-secrets.sh
        $ git add scripts
        $ git commit -q -m &quot;chore: add secret check script&quot;
        $ git config hook.no-secrets.event pre-commit
        $ git config hook.no-secrets.command scripts/check-secrets.sh
        $ git hook list pre-commit
        no-secrets
        $ echo &quot;API_KEY=abc&quot; &gt;&gt; config.txt
        $ git commit -am &quot;fix: update config&quot;
        check-secrets: staged changes contain API_KEY= . Commit blocked.</code></pre></div>
          <ul class="lc-list">
            <li><code>hook.&lt;name&gt;.event</code> says when to run. <code>hook.&lt;name&gt;.command</code> says what to run. You can add several named hooks for the same event.</li>
            <li><code>git hook list pre-commit</code> shows which hooks will run.</li>
            <li>Each teammate still has to run the two <code>git config</code> lines once. For security, Git never runs code from a clone by itself.</li>
          </ul>
          <p>There are older ways that are still common. One is <code>git config core.hooksPath .githooks</code>, which uses a committed folder of hook scripts. Another is tools such as <strong>pre-commit</strong> (Python) and <strong>Husky</strong> (JavaScript), which install hooks for you.</p>
        </div>

        <div class="lc-card">
          <h3>Hooks vs CI</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Local hook</th><th>CI on GitHub (Actions)</th></tr></thead>
            <tbody>
              <tr><td>Feedback</td><td>Instant, before the commit exists</td><td>Minutes later, after the push</td></tr>
              <tr><td>Can someone skip it?</td><td>Yes (<code>--no-verify</code>, or the hook was never installed)</td><td>No, if branch rules require the check</td></tr>
              <tr><td>Best for</td><td>Fast checks: secrets, formatting, message style</td><td>The full test suite, the final check</td></tr>
            </tbody>
          </table>
          <p>Use both. Hooks give speed. CI (Continuous Integration, automatic checks on the server) is the rule nobody can skip.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>chmod +x</code>. Git ignores a hook that is not executable. (Git prints a hint that it was ignored.)</li>
            <li>Naming the file <code>pre-commit.sh</code>, or leaving <code>.sample</code> on it. The name must be exactly <code>pre-commit</code>.</li>
            <li>Expecting hooks in <code>.git/hooks</code> to reach teammates through <code>git push</code>. They never do.</li>
            <li>Slow hooks, like a 5-minute test run on every commit. Then people start using <code>--no-verify</code>. Keep hooks fast, and put long tests in CI.</li>
            <li>Treating a local hook as security. It is a helpful reminder. The real protection is push protection and CI on the server.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In a practice repository, add the <code>pre-commit</code> hook from this lesson. Stage a line with <code>API_KEY=</code> and check that the commit is blocked.</li>
            <li>Add the <code>commit-msg</code> hook. Try the messages <code>update</code> and <code>docs: explain setup</code>. Which one passes?</li>
            <li>Change the <code>pre-commit</code> hook so it also blocks lines that contain <code>TODO</code>.</li>
            <li>Move your check into <code>scripts/</code> and commit it. Register it with <code>hook.&lt;name&gt;.event</code> and <code>hook.&lt;name&gt;.command</code>. Check with <code>git hook list pre-commit</code>.</li>
          </ol>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>You can test a hook without committing. Run it directly: <code>git hook run pre-commit</code>. Then echo <code>$?</code>. A <code>0</code> means it would allow the commit.</p></div>
      HTML
    },

    22 => {
      body: <<~'HTML'
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-git">Git</div>
          <h1 class="lc-title">Capstone: A Complete Git Workflow</h1>
        </div>
        <p class="lc-lead">Now you will use everything together. You will build a small <strong>study-planner</strong> project. You start from an empty folder and end with a tagged release on GitHub. You will use the same habits that professional teams use every day.</p>

        <div class="lc-card">
          <h3>The Workflow</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">init + .gitignore<small>L3, L6</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">branch<small>L12</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">commit + diff<small>L5, L8</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">merge<small>L13–14</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">tag + push<small>L10, L19–20</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">hooks<small>L21</small></div>
          </div>
        </div>

        <div class="lc-card">
          <h3>Step 1: Start the Project</h3>
          <div class="lc-code-block"><pre><code>$ git init
        Initialized empty Git repository in /home/asha/study-planner/.git/
        $ printf &quot;__pycache__/\n.venv/\n.env\n&quot; &gt; .gitignore
        $ printf &quot;# Study Planner\n&quot; &gt; README.md
        $ printf &quot;tasks = []\n&quot; &gt; planner.py
        $ git add .
        $ git commit -m &quot;Initial project structure&quot;
        [main (root-commit) acc5c5f] Initial project structure
         3 files changed, 5 insertions(+)
         create mode 100644 .gitignore
         create mode 100644 README.md
         create mode 100644 planner.py</code></pre></div>
          <p>The <code>.gitignore</code> comes first. Then the virtual environment and <code>.env</code> can never get into a commit by mistake.</p>
        </div>

        <div class="lc-card">
          <h3>Step 2: Build a Feature on a Branch</h3>
          <div class="lc-code-block"><pre><code>$ git switch -c feature/add-task
        Switched to a new branch &#39;feature/add-task&#39;
        $ printf &quot;\ndef add_task(name):\n    tasks.append(name)\n&quot; &gt;&gt; planner.py
        $ git commit -am &quot;Add add_task function&quot;
        [feature/add-task 82105b3] Add add_task function
         1 file changed, 3 insertions(+)
        $ git switch main
        Switched to branch &#39;main&#39;
        $ git merge --no-ff feature/add-task -m &quot;Merge feature/add-task&quot;
        Merge made by the &#39;ort&#39; strategy.
         planner.py | 3 +++
         1 file changed, 3 insertions(+)
        $ git branch -d feature/add-task
        Deleted branch feature/add-task (was 82105b3).</code></pre></div>
          <p><code>--no-ff</code> keeps a visible merge commit for the feature. <code>-d</code> deletes the merged branch. In a team, you would do this merge through a pull request on GitHub instead.</p>
        </div>

        <div class="lc-card">
          <h3>Step 3: Tag and Publish</h3>
          <p>Create an empty GitHub repository named <code>study-planner</code>. Then run:</p>
          <div class="lc-code-block"><pre><code>$ git tag -a v0.1.0 -m &quot;First working version&quot;
        $ git remote add origin https://github.com/asha/study-planner.git
        $ git push -u origin main --follow-tags
        To https://github.com/asha/study-planner.git
         * [new branch]      main -&gt; main
         * [new tag]         v0.1.0 -&gt; v0.1.0
        branch &#39;main&#39; set up to track &#39;origin/main&#39;.
        $ git log --oneline --graph --decorate
        *   fbc8b80 (HEAD -&gt; main, tag: v0.1.0, origin/main) Merge feature/add-task
        |\
        | * 82105b3 Add add_task function
        |/
        * acc5c5f Initial project structure</code></pre></div>
          <p><code>--follow-tags</code> pushed the annotated tag together with the branch. The final graph shows <code>main</code>, the tag and <code>origin/main</code> all on the merge commit. So your local copy and GitHub are in sync. (A real GitHub push also prints progress lines.)</p>
        </div>

        <div class="lc-card">
          <h3>Your Capstone Tasks</h3>
          <p>Build your own version of the project. Make sure each point is true:</p>
          <ol class="lc-list">
            <li><strong>Setup:</strong> correct <code>user.name</code>/<code>user.email</code>. A <code>.gitignore</code> committed first. A README that explains the project.</li>
            <li><strong>Features:</strong> at least <strong>three</strong> feature branches (for example <code>feature/add-task</code>, <code>feature/list-tasks</code>, <code>feature/mark-done</code>). Merge each one into <code>main</code>.</li>
            <li><strong>Conflict:</strong> make two branches edit the same line on purpose. Resolve the conflict correctly.</li>
            <li><strong>Tidy history:</strong> on one branch, make a "fix typo" commit. <code>fixup</code> it with <code>git rebase -i</code> <em>before</em> you merge.</li>
            <li><strong>Undo:</strong> revert one commit on <code>main</code> with <code>git revert</code>.</li>
            <li><strong>Stash:</strong> stash unfinished work and fix something on <code>main</code>. Then pop your work back.</li>
            <li><strong>Release:</strong> tag <code>v0.1.0</code>, and later <code>v0.2.0</code> (annotated). Push both with the branch.</li>
            <li><strong>Sync:</strong> clone the repo into a second folder and push a change from there. Then <code>git pull</code> it in the first folder.</li>
            <li><strong>Automate:</strong> add a <code>pre-commit</code> hook that blocks <code>API_KEY=</code> lines. Add a <code>commit-msg</code> hook for <code>feat:</code>/<code>fix:</code> messages. Show one blocked commit.</li>
            <li><strong>Look inside:</strong> start at your <code>v0.1.0</code> commit. Follow <code>git cat-file -p</code> from the commit to its tree, and then to one blob.</li>
          </ol>
        </div>

        <div class="lc-card">
          <h3>Self-Check</h3>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Command</th><th>You should see</th></tr></thead>
            <tbody>
              <tr><td>Nothing unsaved</td><td><code>git status</code></td><td><code>nothing to commit, working tree clean</code></td></tr>
              <tr><td>Clear history</td><td><code>git log --oneline --graph --all</code></td><td>Readable messages in command form (like "Add task"), visible merges</td></tr>
              <tr><td>No secrets tracked</td><td><code>git ls-files</code></td><td>No <code>.env</code>, no cache folders</td></tr>
              <tr><td>Tags published</td><td><code>git ls-remote --tags origin</code></td><td><code>v0.1.0</code> and <code>v0.2.0</code></td></tr>
              <tr><td>In sync</td><td><code>git status</code></td><td><code>Your branch is up to date with 'origin/main'.</code></td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-card">
          <h3>Try It: Check Your Capstone</h3>
          <p>Do these in your own <code>study-planner</code> repository. Each task says what you should see. Your hashes and dates will be different.</p>
          <ol class="lc-list">
            <li><strong>Undo safely:</strong> run <code>git revert --no-edit HEAD</code> on <code>main</code>. You should see a new commit named <code>Revert "…"</code> on top. The old commit is still in <code>git log --oneline</code>.</li>
            <li><strong>Tag:</strong> create <code>v0.2.0</code> with <code>git tag -a v0.2.0 -m "Second release"</code>. <code>git describe</code> should print exactly <code>v0.2.0</code>. <code>git tag -n</code> should list both tags with their messages.</li>
            <li><strong>Clean state:</strong> <code>git status</code> must end with <code>nothing to commit, working tree clean</code>.</li>
            <li><strong>Publish:</strong> run <code>git push --follow-tags</code>. Then <code>git ls-remote --tags origin</code> must list <code>refs/tags/v0.1.0</code> and <code>refs/tags/v0.2.0</code>.</li>
            <li><strong>Hook:</strong> stage a line with <code>API_KEY=</code> and commit. You should see the message of your hook, and <em>no</em> new commit in <code>git log --oneline</code>.</li>
          </ol>
          <p>Here are tasks 1–3 on a small practice repository:</p>
          <div class="lc-code-block"><pre><code>$ git revert --no-edit HEAD
        [main 21a1a6c] Revert &quot;Print tasks&quot;
         Date: Tue Sep 1 10:11:00 2026 +0530
         1 file changed, 1 deletion(-)
        $ git log --oneline
        21a1a6c Revert &quot;Print tasks&quot;
        79c909e Print tasks
        f8ad7f8 Add task list
        8bb386b Add .gitignore
        $ git tag -a v0.2.0 -m &quot;Second release&quot;
        $ git describe
        v0.2.0
        $ git tag -n
        v0.1.0          First release
        v0.2.0          Second release
        $ git status
        On branch main
        nothing to commit, working tree clean</code></pre></div>
          <p>The <code>Date:</code> line after the revert appears here only because this demo sets fixed commit dates. You will usually not see it.</p>
        </div>

        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Adding <code>.gitignore</code> <em>after</em> you commit the files it should ignore.</li>
            <li>Doing all capstone work on <code>main</code>. The goal is to practise branches.</li>
            <li>Rebasing or amending commits after you push them to a shared branch.</li>
            <li>Forgetting to push tags.</li>
          </ul>
        </div>

        <div class="lc-card">
          <h3>Your Git Command Map</h3>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Commands</th><th>Lessons</th></tr></thead>
            <tbody>
              <tr><td>Set up</td><td><code>config</code>, <code>init</code>, <code>.gitignore</code>, <code>.gitattributes</code></td><td>2, 3, 6</td></tr>
              <tr><td>Save work</td><td><code>status</code>, <code>add</code>, <code>commit</code>, <code>diff</code></td><td>4, 5, 8</td></tr>
              <tr><td>Explore</td><td><code>log</code>, <code>show</code>, <code>log -S</code>, <code>grep</code>, <code>blame</code>, <code>bisect</code></td><td>7, 18</td></tr>
              <tr><td>Understand</td><td><code>cat-file</code>, <code>ls-tree</code>, <code>rev-parse</code>, <code>show-ref</code></td><td>11</td></tr>
              <tr><td>Parallel work</td><td><code>switch</code>, <code>branch</code>, <code>merge</code>, <code>rebase</code>, <code>cherry-pick</code>, <code>stash</code>, <code>worktree</code></td><td>12–16</td></tr>
              <tr><td>Fix mistakes</td><td><code>restore</code>, <code>commit --amend</code>, <code>reset</code>, <code>revert</code>, <code>reflog</code></td><td>9, 17, 18</td></tr>
              <tr><td>Share</td><td><code>clone</code>, <code>remote</code>, <code>push</code>, <code>fetch</code>, <code>pull</code>, <code>tag</code>, <code>submodule</code></td><td>10, 19, 20</td></tr>
              <tr><td>Automate</td><td>hooks, <code>git hook list</code>, <code>--no-verify</code></td><td>21</td></tr>
            </tbody>
          </table>
        </div>

        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Next step: the <strong>GitHub</strong> course. There, this workflow grows into pull requests, code review, GitHub Actions and releases. Congratulations! You now use Git the way professionals do.</p></div>
      HTML
    }
  }
end

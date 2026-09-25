module GitContent
  def self.list(items)
    <<~HTML
      <ul class="lc-list">
        #{items.map { |item| "<li>#{item}</li>" }.join}
      </ul>
    HTML
  end

  def self.flow(steps)
    chunks = steps.each_with_index.map do |step, index|
      card = "<div class='lc-flow-step'>#{step[:title]}<small>#{step[:note]}</small></div>"
      index == steps.length - 1 ? card : "#{card}<div class='lc-flow-arrow'>→</div>"
    end
    "<div class='lc-flow'>#{chunks.join}</div>"
  end

  def self.code_block(code)
    <<~HTML
      <div class="lc-code-block"><pre><code>#{code}</code></pre></div>
    HTML
  end

  def self.lesson_body(section:, title:, lead:, concept:, bullets:, flow_steps: nil, snippet: nil, tip:)
    parts = []
    parts << <<~HTML
      <div class="lc-header">
        <div class="lc-badge le-badge le-badge-git">Git</div>
        <h1 class="lc-title">#{title}</h1>
      </div>
      <p class="lc-lead">#{lead}</p>
      <p class="lc-lesson-section">Section: #{section}</p>
      <div class="lc-section">
        <h2>Core Concept</h2>
        <p>#{concept}</p>
      </div>
      <div class="lc-section">
        <h2>Key Points</h2>
        #{list(bullets)}
      </div>
    HTML

    if flow_steps
      parts << <<~HTML
        <div class="lc-section">
          <h2>Quick Flow</h2>
          #{flow(flow_steps)}
        </div>
      HTML
    end

    if snippet
      parts << <<~HTML
        <div class="lc-section">
          <h2>Example Commands</h2>
          #{code_block(snippet)}
        </div>
      HTML
    end

    parts << <<~HTML
      <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>#{tip}</p></div>
    HTML

    parts.join
  end

  LESSONS = {
    1 => {
      body: lesson_body(
        section: "Foundations",
        title: "Introduction to Git",
        lead: "Git is a version control system that helps developers track changes, collaborate safely, and roll back mistakes.",
        concept: "Instead of saving files like project-final-v2-real-final, Git records snapshots of your project history. Every commit becomes a clear checkpoint you can inspect or restore.",
        bullets: [
          "Git is local-first, so it works even without the internet.",
          "It tracks changes to files over time.",
          "It makes collaboration and recovery much safer."
        ],
        flow_steps: [
          { title: "Edit Files", note: "make changes" },
          { title: "Commit", note: "save snapshot" },
          { title: "Review History", note: "see what changed" }
        ],
        snippet: "git --version\nmkdir my-project\ncd my-project\ngit init",
        tip: "Think of Git as a time machine for your codebase."
      )
    },
    2 => {
      body: lesson_body(
        section: "Foundations",
        title: "Why Version Control Matters",
        lead: "Version control protects your work and helps teams move faster with fewer mistakes.",
        concept: "Without version control, it is hard to know who changed what, when it changed, and how to recover if something breaks. Git solves all three problems with history, authorship, and rollback.",
        bullets: [
          "You can compare old and new versions.",
          "Teams can work on the same project with less conflict.",
          "Broken changes can be traced and reversed."
        ],
        flow_steps: [
          { title: "Work Changes", note: "multiple edits happen" },
          { title: "Track History", note: "Git records them" },
          { title: "Recover Fast", note: "undo safely" }
        ],
        snippet: "git log --oneline\ngit diff\ngit restore filename.txt",
        tip: "A good Git history is both a safety net and a communication tool."
      )
    },
    3 => {
      body: lesson_body(
        section: "Foundations",
        title: "Git Setup and Configuration",
        lead: "Before using Git seriously, configure your name, email, and a few defaults so your commits are correctly identified.",
        concept: "Git writes author information into each commit. That means your global config becomes part of your collaboration identity and should be set once, correctly, on each machine.",
        bullets: [
          "Use your real team email for professional repos.",
          "Global config applies to all projects on your machine.",
          "Local config can override settings per repository."
        ],
        flow_steps: [
          { title: "Set Name", note: "identify author" },
          { title: "Set Email", note: "link commits" },
          { title: "Verify Config", note: "check settings" }
        ],
        snippet: "git config --global user.name \"Adarsh\"\ngit config --global user.email \"adarsh@example.com\"\ngit config --list",
        tip: "If your email is wrong, your commits may not connect to your Git hosting profile."
      )
    },
    4 => {
      body: lesson_body(
        section: "Foundations",
        title: "Initializing a Repository",
        lead: "A Git repository is the project folder Git knows how to track.",
        concept: "When you run git init, Git creates a hidden .git directory. That folder stores commit history, branches, references, and all the metadata needed to manage your project’s timeline.",
        bullets: [
          "git init turns a normal folder into a repository.",
          "The .git folder should usually never be edited manually.",
          "One project normally has one repository root."
        ],
        flow_steps: [
          { title: "Create Folder", note: "project starts" },
          { title: "Run git init", note: "Git tracking begins" },
          { title: "Add Files", note: "start versioning" }
        ],
        snippet: "mkdir portfolio-site\ncd portfolio-site\ngit init\nls -la",
        tip: "If you delete the .git folder, the repository history is gone."
      )
    },
    5 => {
      body: lesson_body(
        section: "Foundations",
        title: "Working Directory, Staging Area, and Repository",
        lead: "Git has three important places where your changes live as they move toward a commit.",
        concept: "The working directory is where you edit files. The staging area is the preview of what will go into the next commit. The repository is the saved commit history.",
        bullets: [
          "Edited does not mean committed.",
          "Staging helps you choose exactly what goes into a snapshot.",
          "Commits only contain what was staged."
        ],
        flow_steps: [
          { title: "Working Directory", note: "edit files" },
          { title: "Staging Area", note: "prepare changes" },
          { title: "Repository", note: "save commit" }
        ],
        snippet: "git status\ngit add app.js\ngit commit -m \"Add home page logic\"",
        tip: "The staging area is like a packing table before you seal the box."
      )
    },
    6 => {
      body: lesson_body(
        section: "Foundations",
        title: "git status and Reading Repository State",
        lead: "git status is one of the most important commands because it tells you exactly what Git sees right now.",
        concept: "It shows modified files, staged changes, untracked files, and the current branch. If you learn to read git status well, you avoid many common Git mistakes.",
        bullets: [
          "Use git status before and after major Git commands.",
          "It shows whether files are staged or unstaged.",
          "It helps prevent accidental commits."
        ],
        flow_steps: [
          { title: "Check Status", note: "see current state" },
          { title: "Act Safely", note: "stage or restore" },
          { title: "Check Again", note: "confirm result" }
        ],
        snippet: "git status\ngit status --short",
        tip: "When confused in Git, start with git status."
      )
    },
    7 => {
      body: lesson_body(
        section: "Foundations",
        title: "Staging Changes with git add",
        lead: "git add moves changes into the staging area so they can be included in the next commit.",
        concept: "You can stage one file, multiple files, or all tracked changes. This lets you group related work into clean, meaningful commits instead of mixing everything together.",
        bullets: [
          "Stage only related changes together when possible.",
          "git add . stages many changes quickly, but use it carefully.",
          "Fine-grained commits make history easier to understand."
        ],
        flow_steps: [
          { title: "Edit Files", note: "make changes" },
          { title: "Stage Specific Work", note: "choose files" },
          { title: "Prepare Commit", note: "ready to save" }
        ],
        snippet: "git add README.md\ngit add src/app.js\ngit add .",
        tip: "Smaller, focused commits are easier to review, revert, and explain."
      )
    },
    8 => {
      body: lesson_body(
        section: "Foundations",
        title: "Committing with Clear Messages",
        lead: "A commit saves a checkpoint, but the commit message explains why that checkpoint exists.",
        concept: "Good commit messages help future teammates and your future self understand intent quickly. A clear history turns Git into documentation, not just storage.",
        bullets: [
          "Use present-tense action like Add, Fix, Update, Refactor.",
          "Keep the summary short and specific.",
          "A good commit should represent one logical unit of work."
        ],
        flow_steps: [
          { title: "Stage Changes", note: "decide commit scope" },
          { title: "Write Message", note: "explain intent" },
          { title: "Commit", note: "save snapshot" }
        ],
        snippet: "git commit -m \"Add signup form validation\"\ngit commit -m \"Fix broken navbar spacing on mobile\"",
        tip: "A weak commit message makes good code harder to trust."
      )
    },
    9 => {
      body: lesson_body(
        section: "Foundations",
        title: "Viewing History with git log",
        lead: "git log helps you explore the story of a repository and understand how the project evolved.",
        concept: "You can view commit hashes, authors, dates, and messages in many formats. This is useful when debugging, auditing changes, or finding where a bug was introduced.",
        bullets: [
          "git log shows the full history by default.",
          "git log --oneline is great for quick scanning.",
          "You can filter history by file, author, and date."
        ],
        flow_steps: [
          { title: "Open History", note: "read commit trail" },
          { title: "Find Change", note: "locate important snapshot" },
          { title: "Inspect Details", note: "understand context" }
        ],
        snippet: "git log\ngit log --oneline\ngit log -- README.md",
        tip: "History is most useful when commits are small, clear, and intentional."
      )
    },
    10 => {
      body: lesson_body(
        section: "Foundations",
        title: "Comparing Changes with git diff",
        lead: "git diff shows exactly what changed between versions, files, or states in your workflow.",
        concept: "It highlights removed lines, added lines, and modified sections. This is essential when reviewing your own work before staging or checking what a commit actually changed.",
        bullets: [
          "Use git diff before committing to review carefully.",
          "You can compare working changes, staged changes, or commits.",
          "Diffs are the foundation of code review."
        ],
        flow_steps: [
          { title: "Make Changes", note: "edit code" },
          { title: "Run Diff", note: "review edits" },
          { title: "Refine Commit", note: "clean history" }
        ],
        snippet: "git diff\ngit diff --staged\ngit diff HEAD~1 HEAD",
        tip: "Reading your diff before commit catches many avoidable mistakes."
      )
    },
    11 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Branches and Why They Matter",
        lead: "Branches let you work on new ideas without disturbing the main line of development.",
        concept: "A branch is a movable pointer to a series of commits. Teams use branches for features, bug fixes, experiments, and release preparation so work stays organized and isolated.",
        bullets: [
          "main or master is usually the stable default branch.",
          "Feature branches keep incomplete work separate.",
          "Branches make collaboration safer."
        ],
        flow_steps: [
          { title: "Create Branch", note: "start isolated work" },
          { title: "Commit Progress", note: "build feature safely" },
          { title: "Merge Back", note: "combine finished work" }
        ],
        snippet: "git branch\ngit branch feature/login\ngit switch feature/login",
        tip: "Branches are cheap in Git, so use them often."
      )
    },
    12 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Creating and Switching Branches",
        lead: "Once you understand branches, you need a reliable way to create them and move between them.",
        concept: "Git now prefers git switch for moving between branches because it is clearer than the older git checkout command, which had multiple unrelated jobs.",
        bullets: [
          "git switch changes branches.",
          "git switch -c both creates and switches.",
          "Older projects may still use git checkout."
        ],
        flow_steps: [
          { title: "Start on main", note: "stable base" },
          { title: "Create Branch", note: "new work begins" },
          { title: "Switch Context", note: "work independently" }
        ],
        snippet: "git switch -c feature/profile-page\ngit switch main\ngit branch",
        tip: "Branch names should describe the work, not just the person."
      )
    },
    13 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Merging Branches",
        lead: "Merging combines work from one branch into another, usually bringing a completed feature into main.",
        concept: "If Git can combine both histories cleanly, the merge is automatic. If the same lines changed in different ways, Git pauses and asks you to resolve a merge conflict.",
        bullets: [
          "Merge after reviewing the target branch is up to date.",
          "Merging preserves the shared history of both branches.",
          "Conflicts happen when changes overlap."
        ],
        flow_steps: [
          { title: "Finish Feature", note: "branch ready" },
          { title: "Switch to main", note: "merge target" },
          { title: "Merge Branch", note: "combine histories" }
        ],
        snippet: "git switch main\ngit merge feature/profile-page",
        tip: "Merge conflicts are normal, not a sign that Git is broken."
      )
    },
    14 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Merge Conflicts and Resolution",
        lead: "A merge conflict happens when Git cannot decide which change should win automatically.",
        concept: "Git marks the conflicting area in the file and waits for you to edit it. After choosing the final content, you stage the resolved file and complete the merge.",
        bullets: [
          "Read both sides carefully before resolving.",
          "Choose the final intended code, not just one side blindly.",
          "Test after conflict resolution when possible."
        ],
        flow_steps: [
          { title: "Conflict Appears", note: "overlapping edits" },
          { title: "Edit Final Version", note: "clean conflict markers" },
          { title: "Stage and Finish", note: "complete merge" }
        ],
        snippet: "git status\n# edit conflicted file\ngit add conflicted_file.rb\ngit commit",
        tip: "The best conflict resolution is the version that keeps the product correct."
      )
    },
    15 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Rebasing Basics",
        lead: "Rebasing rewrites commit history so your branch can sit on top of the latest target branch.",
        concept: "Unlike merge, rebase creates a cleaner, more linear story. It is powerful, but because it rewrites history, it should be used carefully on shared branches.",
        bullets: [
          "Rebase replays commits onto a new base.",
          "It creates a tidy history when used correctly.",
          "Avoid rebasing public shared history unless your team expects it."
        ],
        flow_steps: [
          { title: "Update main", note: "latest base" },
          { title: "Rebase Feature", note: "replay commits" },
          { title: "Continue Cleanly", note: "linear history" }
        ],
        snippet: "git switch feature/cart\ngit rebase main",
        tip: "Merge is about combining histories; rebase is about rewriting yours onto a cleaner base."
      )
    },
    16 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Undoing Changes Safely",
        lead: "Git gives you several ways to undo changes, but each command affects a different part of the workflow.",
        concept: "You can restore an unstaged file, unstage changes, or create a reversing commit. The safest undo in shared history is usually revert because it preserves the record.",
        bullets: [
          "restore helps with file-level undo.",
          "reset changes branch pointers and staging state.",
          "revert creates a new commit that cancels an older one."
        ],
        flow_steps: [
          { title: "Identify Problem", note: "what must be undone?" },
          { title: "Choose Safe Tool", note: "restore, reset, or revert" },
          { title: "Verify Result", note: "check status/history" }
        ],
        snippet: "git restore app.js\ngit restore --staged app.js\ngit revert abc1234",
        tip: "On shared branches, prefer revert over destructive history edits."
      )
    },
    17 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Stashing Work in Progress",
        lead: "Stash lets you temporarily put unfinished changes aside without committing them.",
        concept: "This is useful when you need to switch branches quickly but your working directory is not clean. Git stores the changes in a stack so you can reapply them later.",
        bullets: [
          "Stash is good for short interruptions.",
          "Stashed work is not a long-term replacement for commits.",
          "You can name stashes for clarity."
        ],
        flow_steps: [
          { title: "Work Interrupted", note: "need clean tree" },
          { title: "Stash Changes", note: "store temporary state" },
          { title: "Apply Later", note: "continue work" }
        ],
        snippet: "git stash push -m \"WIP checkout bug\"\ngit stash list\ngit stash pop",
        tip: "If work matters and is stable enough, a small branch commit is often better than a long-lived stash."
      )
    },
    18 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Remote Repositories",
        lead: "A remote repository is the shared copy of your project stored on a hosting service or another machine.",
        concept: "Git itself is local, but collaboration usually happens through remotes like origin. Push sends your commits up, and fetch or pull brings remote work down.",
        bullets: [
          "origin is the common default remote name.",
          "push uploads local commits.",
          "fetch and pull download remote updates."
        ],
        flow_steps: [
          { title: "Commit Locally", note: "prepare work" },
          { title: "Push to Remote", note: "share history" },
          { title: "Fetch Updates", note: "stay in sync" }
        ],
        snippet: "git remote -v\ngit push origin main\ngit fetch origin",
        tip: "Fetch is safer when you want to inspect remote changes before integrating them."
      )
    },
    19 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Pulling, Fetching, and Keeping in Sync",
        lead: "Teams work well when everyone keeps their branch up to date without surprising each other.",
        concept: "git pull is effectively fetch plus merge or rebase, depending on settings. Many developers prefer fetch first so they can inspect remote updates before changing local history.",
        bullets: [
          "fetch downloads without changing your current branch.",
          "pull integrates remote changes immediately.",
          "Regular syncing reduces painful conflicts later."
        ],
        flow_steps: [
          { title: "Check Remote", note: "see new work" },
          { title: "Fetch or Pull", note: "sync safely" },
          { title: "Resolve Differences", note: "stay current" }
        ],
        snippet: "git fetch origin\ngit pull origin main\ngit pull --rebase origin main",
        tip: "Frequent small syncs are easier than one giant sync after days of drift."
      )
    },
    20 => {
      body: lesson_body(
        section: "Branching and Collaboration",
        title: "Git Workflow Review",
        lead: "By now you understand the full Git journey from editing files to sharing finished work with a team.",
        concept: "A strong Git workflow means clear commits, clean branches, safe undo habits, and thoughtful collaboration. These habits compound over time and make every team more effective.",
        bullets: [
          "Check status often.",
          "Commit small, meaningful units of work.",
          "Use branches and remotes intentionally."
        ],
        flow_steps: [
          { title: "Create Branch", note: "start focused work" },
          { title: "Commit Cleanly", note: "save progress" },
          { title: "Merge or Rebase", note: "finish safely" }
        ],
        snippet: "git status\ngit add .\ngit commit -m \"Complete cart page\"\ngit push origin feature/cart",
        tip: "The best Git users are usually the ones with the calmest, cleanest habits."
      )
    }
  }.freeze
end

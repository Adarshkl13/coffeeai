module GithubContent
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
        <div class="lc-badge le-badge le-badge-github">GitHub</div>
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
        section: "Platform Basics",
        title: "Introduction to GitHub",
        lead: "GitHub is a platform built around Git that helps people host code, collaborate, review work, and manage software projects.",
        concept: "Git stores history locally, while GitHub makes that history shareable. It adds repositories, pull requests, issues, reviews, actions, and many team-friendly workflows on top of Git.",
        bullets: [
          "GitHub is not Git, but they work together closely.",
          "It is used for open source, private teams, and portfolios.",
          "It helps teams collaborate asynchronously."
        ],
        flow_steps: [
          { title: "Write Code", note: "local Git repo" },
          { title: "Push to GitHub", note: "share online" },
          { title: "Collaborate", note: "review and merge" }
        ],
        snippet: "git remote add origin https://github.com/yourname/project.git\ngit push -u origin main",
        tip: "GitHub is where Git history becomes a team workflow."
      )
    },
    2 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "Creating a GitHub Repository",
        lead: "A repository is the central home for your code, docs, history, and collaboration.",
        concept: "On GitHub, each repository has a name, visibility, README, settings, issues, pull requests, and branch protections. A clean repository setup makes the project easier to understand from day one.",
        bullets: [
          "Choose a clear repository name.",
          "A README helps people understand the project quickly.",
          "Public and private repositories serve different needs."
        ],
        flow_steps: [
          { title: "Create Repo", note: "new project home" },
          { title: "Connect Local Git", note: "set remote" },
          { title: "Push Initial Commit", note: "publish code" }
        ],
        snippet: "git remote add origin https://github.com/yourname/portfolio.git\ngit branch -M main\ngit push -u origin main",
        tip: "A polished repository page often matters as much as the code itself."
      )
    },
    3 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "Cloning a Repository",
        lead: "Cloning copies a repository from GitHub to your machine so you can work on it locally.",
        concept: "A clone includes the files, commit history, branches, and remote connection. It is the normal starting point when joining an existing project.",
        bullets: [
          "Clone once, then pull future updates.",
          "You can clone via HTTPS or SSH.",
          "A clone is a complete Git repository on your machine."
        ],
        flow_steps: [
          { title: "Find Repo URL", note: "copy clone link" },
          { title: "Run git clone", note: "download history" },
          { title: "Start Working", note: "edit locally" }
        ],
        snippet: "git clone https://github.com/example-org/sample-app.git\ncd sample-app",
        tip: "Cloning is safer than downloading ZIPs because it preserves Git history."
      )
    },
    4 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "README and Project Presentation",
        lead: "Your README is often the first thing people read, so it should explain what the project is and how to use it.",
        concept: "A strong README can turn a confusing code repository into a professional product page. It usually includes overview, setup, usage, screenshots, and contribution guidance.",
        bullets: [
          "Start with what the project does.",
          "Add setup steps that a new developer can follow.",
          "Use headings and examples to make it readable."
        ],
        flow_steps: [
          { title: "Describe Project", note: "what and why" },
          { title: "Add Setup", note: "how to run" },
          { title: "Show Usage", note: "make it approachable" }
        ],
        snippet: "# Project Name\n## Setup\n## Usage\n## Contributing",
        tip: "A README should reduce the number of questions a new teammate must ask."
      )
    },
    5 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "Branches on GitHub",
        lead: "Branches on GitHub mirror your Git branches and make it easier to collaborate around feature work.",
        concept: "Instead of pushing every change directly to main, teams usually push feature branches and open pull requests from them. This adds review, discussion, and better release control.",
        bullets: [
          "main stays stable while feature branches carry active work.",
          "GitHub displays branches clearly in the web UI.",
          "Branch naming conventions help teams stay organized."
        ],
        flow_steps: [
          { title: "Create Branch Locally", note: "start new work" },
          { title: "Push Branch", note: "publish to GitHub" },
          { title: "Open Pull Request", note: "request review" }
        ],
        snippet: "git switch -c feature/billing-page\ngit push -u origin feature/billing-page",
        tip: "GitHub branches are most useful when paired with small, focused pull requests."
      )
    },
    6 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "Pull Requests Explained",
        lead: "A pull request is GitHub’s main collaboration unit for proposing, reviewing, and merging changes.",
        concept: "A pull request shows the branch differences, discussion, status checks, reviewers, and merge options in one place. It creates shared visibility before code enters the main branch.",
        bullets: [
          "Pull requests are for discussion, not just merging.",
          "Small PRs are easier to review well.",
          "The description should explain the purpose of the change."
        ],
        flow_steps: [
          { title: "Push Branch", note: "work available online" },
          { title: "Open PR", note: "describe proposed change" },
          { title: "Review and Merge", note: "complete workflow" }
        ],
        snippet: "Title: Add password reset flow\nDescription: Adds email request screen, token validation, and update form.",
        tip: "A strong pull request tells reviewers what changed, why it changed, and what to check."
      )
    },
    7 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "Code Review on GitHub",
        lead: "Code review helps teams catch bugs, spread knowledge, and improve consistency before code is merged.",
        concept: "On GitHub, reviewers can comment on files, leave overall feedback, approve, or request changes. Good review culture improves the product and the team at the same time.",
        bullets: [
          "Review the behavior, not just the syntax.",
          "Good reviews are clear, respectful, and actionable.",
          "Authors should respond thoughtfully, not defensively."
        ],
        flow_steps: [
          { title: "Author Opens PR", note: "change ready for review" },
          { title: "Reviewer Comments", note: "find risks and improvements" },
          { title: "Author Updates", note: "address feedback" }
        ],
        tip: "The goal of review is a better system, not winning an argument."
      )
    },
    8 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "Issues and Task Tracking",
        lead: "GitHub Issues let teams capture bugs, features, ideas, and project tasks in a structured way.",
        concept: "Issues become a lightweight planning system when combined with labels, assignees, milestones, and linked pull requests. They help make work visible before code starts.",
        bullets: [
          "Good issues explain the problem clearly.",
          "Labels help organize the work queue.",
          "PRs can close issues automatically."
        ],
        flow_steps: [
          { title: "Create Issue", note: "describe problem or feature" },
          { title: "Assign and Label", note: "organize ownership" },
          { title: "Link PR", note: "connect implementation" }
        ],
        snippet: "Closes #42\nFixes #18",
        tip: "A well-written issue can save hours of confusion later."
      )
    },
    9 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "Forks and Open Source Contribution",
        lead: "Forking creates your own copy of someone else’s repository so you can contribute safely without direct access.",
        concept: "In many open source projects, contributors fork the repo, create a branch in their fork, push changes there, and then open a pull request back to the original project.",
        bullets: [
          "Forks are common in open source workflows.",
          "You control your fork, but contribute back upstream.",
          "Keeping your fork synced matters over time."
        ],
        flow_steps: [
          { title: "Fork Repo", note: "copy to your account" },
          { title: "Create Branch", note: "make improvement" },
          { title: "Open Upstream PR", note: "contribute back" }
        ],
        tip: "Forks are ideal when you do not have direct push rights to the original repository."
      )
    },
    10 => {
      body: lesson_body(
        section: "Platform Basics",
        title: "Syncing Forks and Staying Updated",
        lead: "A stale fork quickly becomes hard to contribute from, so you need a habit for staying close to upstream.",
        concept: "You add the original repository as an upstream remote, fetch new changes, and update your branch or main copy. This keeps your work compatible with the current project state.",
        bullets: [
          "origin usually points to your fork.",
          "upstream points to the original repository.",
          "Regular syncing reduces future conflicts."
        ],
        flow_steps: [
          { title: "Add Upstream", note: "connect original repo" },
          { title: "Fetch Changes", note: "download updates" },
          { title: "Rebase or Merge", note: "stay current" }
        ],
        snippet: "git remote add upstream https://github.com/original/project.git\ngit fetch upstream\ngit rebase upstream/main",
        tip: "Keep your fork’s main branch clean so feature branches start from a healthy base."
      )
    },
    11 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "GitHub Flow",
        lead: "GitHub Flow is a lightweight branching model built around short-lived branches and pull requests.",
        concept: "The basic cycle is simple: branch from main, make changes, push, open a pull request, review, then merge. It works especially well for continuously deployed applications.",
        bullets: [
          "main should stay deployable.",
          "Feature branches should stay focused and short-lived.",
          "Pull requests are the center of the workflow."
        ],
        flow_steps: [
          { title: "Branch from main", note: "start work" },
          { title: "Push and PR", note: "request review" },
          { title: "Merge to main", note: "ship changes" }
        ],
        tip: "GitHub Flow works best when teams merge often and keep main healthy."
      )
    },
    12 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "Labels, Milestones, and Projects",
        lead: "GitHub has lightweight planning tools that help organize work beyond code.",
        concept: "Labels classify issues and pull requests, milestones group work around a target, and project boards help teams visualize progress across tasks and releases.",
        bullets: [
          "Labels create structure in busy repositories.",
          "Milestones help teams track a goal or release.",
          "Projects give managers and developers shared visibility."
        ],
        flow_steps: [
          { title: "Create Issue", note: "work item appears" },
          { title: "Apply Labels", note: "classify it" },
          { title: "Track in Project", note: "watch progress" }
        ],
        tip: "A clean issue system makes engineering planning much less chaotic."
      )
    },
    13 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "Branch Protection Rules",
        lead: "Branch protection rules help teams prevent risky direct changes to important branches like main.",
        concept: "GitHub can require pull requests, approvals, passing checks, or linear history before allowing merges. This reduces accidental damage and improves quality control.",
        bullets: [
          "Protected branches reduce unsafe direct pushes.",
          "Rules can require reviews and successful checks.",
          "They are especially useful for production branches."
        ],
        flow_steps: [
          { title: "Protect Branch", note: "define safety rules" },
          { title: "Open PR", note: "reviewable changes only" },
          { title: "Merge Safely", note: "checks must pass" }
        ],
        tip: "Branch protection is one of the easiest high-value safeguards a team can adopt."
      )
    },
    14 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "GitHub Actions Basics",
        lead: "GitHub Actions automates tasks like tests, builds, linting, and deployments directly from your repository.",
        concept: "Workflows are defined in YAML files under .github/workflows. They run on events such as push, pull_request, or release, turning your repo into an automation hub.",
        bullets: [
          "Actions can run tests on every pull request.",
          "Automation reduces repetitive manual work.",
          "Failed checks can block unsafe merges."
        ],
        flow_steps: [
          { title: "Event Triggers", note: "push or PR happens" },
          { title: "Workflow Runs", note: "jobs execute" },
          { title: "Status Reported", note: "pass or fail" }
        ],
        snippet: "on: [push, pull_request]\njobs:\n  test:\n    runs-on: ubuntu-latest",
        tip: "Start with a simple test workflow before building more advanced automation."
      )
    },
    15 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "Releases and Tags",
        lead: "Releases help teams package important versions of a project for users and teammates.",
        concept: "A Git tag marks a specific commit, while a GitHub release adds notes, assets, and a clearer presentation layer. This is useful for versioned software, changelogs, and downloads.",
        bullets: [
          "Tags point to important commits.",
          "Releases add human-friendly packaging on GitHub.",
          "Semantic versions like v1.2.0 are common."
        ],
        flow_steps: [
          { title: "Choose Stable Commit", note: "release point" },
          { title: "Create Tag", note: "mark version" },
          { title: "Publish Release", note: "share notes and assets" }
        ],
        snippet: "git tag v1.0.0\ngit push origin v1.0.0",
        tip: "Releases are easier to trust when they come from clear milestones and tested code."
      )
    },
    16 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "GitHub Discussions and Community",
        lead: "Not every conversation belongs in an issue or pull request. Discussions create a more open space for questions and community knowledge.",
        concept: "Discussions work well for ideas, help requests, announcements, and community Q&A. They reduce noise in issue trackers and support healthier project communication.",
        bullets: [
          "Use issues for actionable work, discussions for broader conversation.",
          "Discussions help open source communities scale support.",
          "They can surface feature ideas before formal work begins."
        ],
        flow_steps: [
          { title: "Ask or Share", note: "start a discussion" },
          { title: "Community Responds", note: "ideas and support" },
          { title: "Convert to Action", note: "issue or PR if needed" }
        ],
        tip: "Healthy community spaces make projects more sustainable over time."
      )
    },
    17 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "Security and Dependabot",
        lead: "GitHub provides built-in tools to help teams discover dependency risks and security problems earlier.",
        concept: "Dependabot can alert you to insecure packages and even open upgrade pull requests automatically. Security tabs, secret scanning, and code scanning add even more protection in larger projects.",
        bullets: [
          "Dependency updates reduce exposure to known vulnerabilities.",
          "Security should be part of the normal repo workflow.",
          "Automated alerts are useful, but human review still matters."
        ],
        flow_steps: [
          { title: "Dependency Risk Found", note: "alert appears" },
          { title: "PR Suggested", note: "upgrade path offered" },
          { title: "Review and Merge", note: "apply fix safely" }
        ],
        tip: "Security workflows are strongest when updates happen regularly, not only during crises."
      )
    },
    18 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "Managing Teams and Permissions",
        lead: "As projects grow, managing who can see, push, review, or administer a repository becomes important.",
        concept: "GitHub supports owners, maintainers, write access, read access, teams, and branch rules. Good permission design protects the repo while still letting people work efficiently.",
        bullets: [
          "Give people the least access they need.",
          "Teams make permission management easier in organizations.",
          "Admin access should stay limited."
        ],
        flow_steps: [
          { title: "Define Roles", note: "who does what" },
          { title: "Assign Access", note: "safe permissions" },
          { title: "Review Regularly", note: "keep it healthy" }
        ],
        tip: "Permission design is part of engineering quality, not just administration."
      )
    },
    19 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "Portfolio and Professional GitHub Presence",
        lead: "Your GitHub profile can act like a living resume when it is organized thoughtfully.",
        concept: "Pinned repositories, strong READMEs, consistent commit habits, and clear project documentation all shape how recruiters, collaborators, and other developers perceive your work.",
        bullets: [
          "Pin projects that show range and quality.",
          "Clean repository names and READMEs matter.",
          "Visible learning projects still count when they are well presented."
        ],
        flow_steps: [
          { title: "Choose Best Repos", note: "show strongest work" },
          { title: "Polish Presentation", note: "README and screenshots" },
          { title: "Keep Active", note: "show growth over time" }
        ],
        tip: "Professional presence is built from clarity, consistency, and care."
      )
    },
    20 => {
      body: lesson_body(
        section: "Collaboration Workflows",
        title: "GitHub Workflow Review",
        lead: "You now understand the complete GitHub collaboration cycle from repository setup to pull requests, automation, and releases.",
        concept: "A mature GitHub workflow blends technical accuracy with team habits: clear issues, clean pull requests, thoughtful reviews, strong automation, and reliable release practices.",
        bullets: [
          "Repository quality influences team velocity.",
          "Pull requests are central to healthy collaboration.",
          "GitHub becomes more powerful as your process becomes more intentional."
        ],
        flow_steps: [
          { title: "Organize Work", note: "issues and branches" },
          { title: "Review Changes", note: "PRs and checks" },
          { title: "Ship with Confidence", note: "merge and release" }
        ],
        snippet: "git push origin feature/docs-refresh\n# open pull request on GitHub\n# review, merge, and release",
        tip: "The best GitHub workflows make good engineering feel normal."
      )
    }
  }.freeze
end

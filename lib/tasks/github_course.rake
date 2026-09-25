require_relative "../github_content"

namespace :content do
  desc "Create GitHub course and populate all 20 lessons"
  task github: :environment do
    course = Course.find_or_create_by!(slug: "github") do |c|
      c.title = "GitHub"
      c.description = "Learn GitHub from repositories and pull requests to reviews, issues, Actions, releases, permissions, and professional collaboration workflows."
      c.color = "#6366f1"
      c.icon = "🐙"
      c.position = 22
      c.published = true
    end
    puts "Course: #{course.title}"

    titles = {
      1 => "Introduction to GitHub",
      2 => "Signing In from Git: HTTPS Tokens and SSH Keys",
      3 => "The GitHub CLI (gh)",
      4 => "Creating, Cloning and Pushing Repositories",
      5 => "README, LICENSE and Your Profile",
      6 => "Issues, Labels and Issue Templates",
      7 => "Milestones, Projects and Discussions",
      8 => "Pull Requests and Merge Methods",
      9 => "Code Review on GitHub",
      10 => "Collaborators, Teams and Permissions",
      11 => "GitHub Flow from Start to Finish",
      12 => "Forks, Upstream and Open Source Contributions",
      13 => "Branch Protection and Rulesets",
      14 => "GitHub Actions Basics",
      15 => "Continuous Integration with GitHub Actions",
      16 => "Secrets, Variables and Token Permissions",
      17 => "Security Features and Dependabot",
      18 => "Releases and Tags",
      19 => "GitHub Pages",
      20 => "Capstone: Ship a Project on GitHub"
    }

    descriptions = {
      1 => "Learn what GitHub adds on top of Git and find your way around a repository page.",
      2 => "Authenticate git push with Git Credential Manager, personal access tokens, SSH keys or gh auth login.",
      3 => "Install gh, log in, and manage repositories, issues and pull requests from the terminal.",
      4 => "Create a repository on GitHub, push an existing project and clone repositories.",
      5 => "Write a clear README, choose an open-source license and build a profile that shows your work.",
      6 => "Track bugs and tasks with issues, labels and templates, and close them automatically from commits.",
      7 => "Plan work with milestones and GitHub Projects boards, and use Discussions for open conversation.",
      8 => "Open pull requests, link issues, use drafts and choose between merge, squash and rebase merges.",
      9 => "Review pull requests with comments and suggestions, test them locally and respond to feedback.",
      10 => "Give people the right level of access with collaborators, organizations, teams, roles and CODEOWNERS.",
      11 => "Practise the everyday branch, pull request, review, merge and clean-up cycle.",
      12 => "Fork a project, keep your fork in sync with upstream and send your first open-source pull request.",
      13 => "Protect main with rulesets that require pull requests, reviews and passing checks.",
      14 => "Understand workflows, events, jobs, steps and runners, and run your first workflow.",
      15 => "Run your tests automatically on every push and pull request, with a matrix of Python versions.",
      16 => "Store API keys safely for workflows and give the GITHUB_TOKEN only the permissions it needs.",
      17 => "Protect your account and code with 2FA, Dependabot, secret scanning, push protection and code scanning.",
      18 => "Publish versioned releases with notes and downloadable files, by hand or automatically.",
      19 => "Publish a free static website from a repository with GitHub Pages and a deployment workflow.",
      20 => "Combine repositories, issues, pull requests, CI, security, releases and Pages in one real project."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which statement about Git and GitHub is correct?", opts: ["A) GitHub is a website that hosts Git repositories and adds tools like pull requests and issues", "B) Git is a website, and GitHub is the program you install to use it", "C) They are two names for the same program made by the same company"], ans: "A" },
      2 => { type: "true_false", q: "When git push over HTTPS asks for a password, GitHub accepts your normal account password.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which command logs the GitHub CLI in and can also set up Git to use it for HTTPS pushes?", opts: ["A) gh auth login", "B) gh repo clone", "C) git config --global gh.login true"], ans: "A" },
      4 => { type: "multiple_choice", q: "You already have a local project with commits. How should you create its GitHub repository?", opts: ["A) Tick \"Add a README\" so the new repository is not empty", "B) Leave README, .gitignore and license unticked so your first push goes in cleanly", "C) Create it as a fork of another repository first"], ans: "B" },
      5 => { type: "true_false", q: "If a public repository has no LICENSE file, other people are legally free to copy and reuse its code.", opts: ["True", "False"], ans: "False" },
      6 => { type: "multiple_choice", q: "A pull request targeting main (the default branch) says \"Fixes #12\". When is issue #12 closed automatically?", opts: ["A) As soon as the pull request is opened", "B) When a reviewer approves the pull request", "C) When the pull request is merged into main"], ans: "C" },
      7 => { type: "multiple_choice", q: "Which feature groups issues into a goal with a due date and a progress bar?", opts: ["A) A milestone", "B) A label", "C) A discussion"], ans: "A" },
      8 => { type: "multiple_choice", q: "Which merge button turns all of a pull request's commits into a single new commit on main?", opts: ["A) Create a merge commit", "B) Squash and merge", "C) Rebase and merge"], ans: "B" },
      9 => { type: "multiple_choice", q: "How can you download pull request #6 into a local branch called pr-6 using plain Git?", opts: ["A) git fetch origin pull/6/head:pr-6", "B) git pull origin pr/6 --branch pr-6", "C) git clone --pull-request 6 pr-6"], ans: "A" },
      10 => { type: "true_false", q: "In a CODEOWNERS file, when several patterns match the same file, the last matching line takes precedence.", opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "Your PR was merged with \"Squash and merge\". Why does git branch -d on your old feature branch refuse to delete it?", opts: ["A) GitHub locks branches for 24 hours after a merge", "B) Branches can only be deleted on the GitHub website", "C) main has a new squashed commit, not your original commits, so Git sees the branch as unmerged"], ans: "C" },
      12 => { type: "multiple_choice", q: "In a fork-based workflow, what does the remote named upstream usually point to?", opts: ["A) The original repository you forked from", "B) Your own fork on GitHub", "C) A backup copy of your local clone"], ans: "A" },
      13 => { type: "true_false", q: "A ruleset that requires a pull request before merging will reject a direct git push to main.", opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "Where must a GitHub Actions workflow file be saved?", opts: ["A) .github/actions/ci.yml", "B) workflows/ci.yml in the repository root", "C) .github/workflows/ci.yml"], ans: "C" },
      15 => { type: "multiple_choice", q: "A job has matrix python-version: [\"3.12\", \"3.13\", \"3.14\"]. How many times does the job run for one push?", opts: ["A) Once, using the newest version", "B) Three times, once per version", "C) Nine times, once per pair of versions"], ans: "B" },
      16 => { type: "true_false", q: "Your repository's secrets are passed to pull_request workflow runs that come from forks.", opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "You discover that a real API key was pushed to a public repository. What should you do first?", opts: ["A) Delete the file in a new commit", "B) Make the repository private", "C) Revoke or rotate the key"], ans: "C" },
      18 => { type: "true_false", q: "gh release create v1.0.0 --generate-notes builds release notes from the pull requests merged since the previous release.", opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "User asha publishes a Pages site from her repository chai-menu. What is its default URL?", opts: ["A) https://github.com/asha/chai-menu.io", "B) https://asha.github.io/chai-menu/", "C) https://chai-menu.github.io/asha/"], ans: "B" },
      20 => { type: "multiple_choice", q: "A required status check in your ruleset stays at \"Expected — Waiting for status to be reported\". What is the most likely cause?", opts: ["A) The repository has too many open issues", "B) Pull requests need at least two reviewers", "C) The required check name does not match any job that actually runs"], ans: "C" }
    }

    GithubContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]
        l.description = descriptions[position]
      end

      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
        starter_code: data[:starter_code]
      )

      ex = exercises[position]
      exercise = Exercise.find_by(course_lesson: lesson) || lesson.build_exercise
      exercise.assign_attributes(
        exercise_type: ex[:type],
        question: ex[:q],
        options: ex[:opts],
        correct_answer: ex[:ans]
      )
      exercise.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    total_lessons = CourseLesson.where(course: course).count
    total_exercises = Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count
    puts "Done! #{total_lessons} lessons, #{total_exercises} exercises."
  end
end

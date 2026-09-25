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
      2 => "Creating a GitHub Repository",
      3 => "Cloning a Repository",
      4 => "README and Project Presentation",
      5 => "Branches on GitHub",
      6 => "Pull Requests Explained",
      7 => "Code Review on GitHub",
      8 => "Issues and Task Tracking",
      9 => "Forks and Open Source Contribution",
      10 => "Syncing Forks and Staying Updated",
      11 => "GitHub Flow",
      12 => "Labels, Milestones, and Projects",
      13 => "Branch Protection Rules",
      14 => "GitHub Actions Basics",
      15 => "Releases and Tags",
      16 => "GitHub Discussions and Community",
      17 => "Security and Dependabot",
      18 => "Managing Teams and Permissions",
      19 => "Portfolio and Professional GitHub Presence",
      20 => "GitHub Workflow Review"
    }

    descriptions = {
      1 => "Understand what GitHub adds on top of Git.",
      2 => "Create a repository and connect it to local work.",
      3 => "Clone shared repositories onto your machine.",
      4 => "Use READMEs to present projects professionally.",
      5 => "Work with GitHub branches effectively.",
      6 => "Understand how pull requests structure collaboration.",
      7 => "Review code clearly and respectfully.",
      8 => "Track tasks and bugs with issues.",
      9 => "Contribute through forks and upstream pull requests.",
      10 => "Keep your fork aligned with the original repository.",
      11 => "Learn the common GitHub Flow branching model.",
      12 => "Organize work with labels, milestones, and project boards.",
      13 => "Protect important branches with safer rules.",
      14 => "Automate checks and tasks with GitHub Actions.",
      15 => "Publish versions cleanly with tags and releases.",
      16 => "Support community conversations with Discussions.",
      17 => "Use GitHub security tooling to reduce risk.",
      18 => "Manage collaborators and permissions safely.",
      19 => "Turn your GitHub profile into a professional asset.",
      20 => "Review the full GitHub collaboration lifecycle."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "How are Git and GitHub related?", opts: ["A) GitHub is a newer version of Git that replaces it entirely", "B) Git tracks history locally; GitHub hosts repos and adds PRs, issues, and reviews", "C) They are two names for the same version control tool"], ans: "B" },
      2 => { type: "true_false", q: "Every GitHub repository has to be public; private repositories are not possible.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "What do you get when you run git clone on a GitHub repository?", opts: ["A) The files plus the full commit history, branches, and a remote link", "B) Only the latest files, the same as downloading a ZIP archive", "C) A fork of the repository created under your own account"], ans: "A" },
      4 => { type: "multiple_choice", q: "According to the lesson, what does a strong README usually include?", opts: ["A) A copy of the full commit log for every branch", "B) Only the software license text and the author's name", "C) An overview, setup steps, usage, and contribution guidance"], ans: "C" },
      5 => { type: "true_false", q: "Most teams push every change directly to main rather than using feature branches and pull requests.", opts: ["True", "False"], ans: "False" },
      6 => { type: "multiple_choice", q: "What should a strong pull request description tell reviewers?", opts: ["A) Only the name of the branch being merged", "B) What changed, why it changed, and what to check", "C) Nothing; the diff speaks for itself"], ans: "B" },
      7 => { type: "multiple_choice", q: "According to the lesson, what makes a good code review?", opts: ["A) Focusing only on formatting, naming, and syntax style", "B) Checking behavior and risks, with clear, respectful comments", "C) Approving quickly so the author is never kept waiting"], ans: "B" },
      8 => { type: "true_false", q: "Writing \"Closes #42\" in a pull request description can automatically close issue #42 when the pull request is merged.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "When is forking the usual way to contribute?", opts: ["A) When you lack push access to the repository you want to improve", "B) When you want to rename a branch in your own repository", "C) When you want to deploy your application to production"], ans: "A" },
      10 => { type: "multiple_choice", q: "When working from a fork, which remote name usually points to the original project?", opts: ["A) origin", "B) production", "C) upstream"], ans: "C" },
      11 => { type: "true_false", q: "GitHub Flow relies on long-lived feature branches that are merged only once per release.", opts: ["True", "False"], ans: "False" },
      12 => { type: "multiple_choice", q: "Which GitHub feature groups issues and pull requests around a target such as a release?", opts: ["A) Labels", "B) Discussions", "C) Milestones"], ans: "C" },
      13 => { type: "multiple_choice", q: "What problem do branch protection rules mainly solve?", opts: ["A) They hide branches from people outside the organization", "B) They prevent risky direct changes to important branches such as main", "C) They automatically back up branches to another server"], ans: "B" },
      14 => { type: "true_false", q: "GitHub Actions workflows are defined in YAML files inside the .github/workflows folder.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "What is the difference between a Git tag and a GitHub release?", opts: ["A) A tag marks a commit; a release adds notes and assets on GitHub", "B) A release marks a commit; a tag adds notes and assets on GitHub", "C) Nothing; GitHub stores tags and releases as the same object"], ans: "A" },
      16 => { type: "multiple_choice", q: "Where does the lesson suggest posting an open-ended question or early feature idea that isn't actionable work yet?", opts: ["A) GitHub Discussions", "B) A new issue", "C) A draft pull request"], ans: "A" },
      17 => { type: "true_false", q: "Because Dependabot opens upgrade pull requests automatically, they can be merged without any human review.", opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "A contractor only needs to open pull requests on one repository. Following least privilege, what access should they get?", opts: ["A) Admin access to the whole organization", "B) The organization owner role", "C) Write access to that one repository"], ans: "C" },
      19 => { type: "multiple_choice", q: "Which repositories does the lesson suggest pinning on your GitHub profile?", opts: ["A) Projects that show range and quality, with clear READMEs", "B) Every repository you have ever created, including empty ones", "C) Only forks of popular open source projects"], ans: "A" },
      20 => { type: "true_false", q: "In the review workflow, you push a feature branch, open a pull request, and then review, merge, and release.", opts: ["True", "False"], ans: "True" }
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

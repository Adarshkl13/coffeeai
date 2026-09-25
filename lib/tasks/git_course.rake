require_relative "../git_content"

namespace :content do
  desc "Create Git course and populate all 20 lessons"
  task git: :environment do
    course = Course.find_or_create_by!(slug: "git") do |c|
      c.title = "Git"
      c.description = "Learn Git from local version control basics to branching, merging, rebasing, stashing, remotes, and practical collaboration habits."
      c.color = "#f97316"
      c.icon = "🌿"
      c.position = 21
      c.published = true
    end
    puts "Course: #{course.title}"

    titles = {
      1 => "Introduction to Git",
      2 => "Why Version Control Matters",
      3 => "Git Setup and Configuration",
      4 => "Initializing a Repository",
      5 => "Working Directory, Staging Area, and Repository",
      6 => "git status and Reading Repository State",
      7 => "Staging Changes with git add",
      8 => "Committing with Clear Messages",
      9 => "Viewing History with git log",
      10 => "Comparing Changes with git diff",
      11 => "Branches and Why They Matter",
      12 => "Creating and Switching Branches",
      13 => "Merging Branches",
      14 => "Merge Conflicts and Resolution",
      15 => "Rebasing Basics",
      16 => "Undoing Changes Safely",
      17 => "Stashing Work in Progress",
      18 => "Remote Repositories",
      19 => "Pulling, Fetching, and Keeping in Sync",
      20 => "Git Workflow Review"
    }

    descriptions = {
      1 => "Understand what Git is and why developers rely on it.",
      2 => "See why version control protects teams and projects.",
      3 => "Configure Git correctly for daily work.",
      4 => "Turn a folder into a Git repository.",
      5 => "Learn how changes move through Git’s workflow.",
      6 => "Read your repository state with confidence.",
      7 => "Stage the right files for a clean commit.",
      8 => "Write useful commit messages and save progress well.",
      9 => "Explore project history and commit trails.",
      10 => "Review exact file changes before sharing work.",
      11 => "Use branches to separate work safely.",
      12 => "Create and move between branches effectively.",
      13 => "Combine finished work back into shared branches.",
      14 => "Resolve conflicting changes without panic.",
      15 => "Understand how rebasing rewrites branch history.",
      16 => "Use restore, reset, and revert more safely.",
      17 => "Pause unfinished work without losing it.",
      18 => "Connect local repositories to shared remotes.",
      19 => "Stay synchronized with teammates and remote history.",
      20 => "Review the complete Git workflow end to end."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Why can you keep committing with Git even when you are offline?", opts: ["A) Git is local-first: the full history lives in the repository on your machine", "B) Git caches a temporary copy of GitHub until you reconnect", "C) It can't; each commit is uploaded to a server immediately"], ans: "A" },
      2 => { type: "true_false", q: "Version control history records who changed what and when, which makes broken changes easier to trace and reverse.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "Your global user.email is set. Inside one repository you run git config user.email work@company.com (without --global). What happens?", opts: ["A) The global email changes for every repository", "B) That repository uses the new email; other repositories keep the global one", "C) Git rejects the command because a global email already exists"], ans: "B" },
      4 => { type: "multiple_choice", q: "What does git init create inside your project folder?", opts: ["A) A README.md file that describes the project", "B) A hidden .git folder that stores the project's history", "C) A new remote repository on GitHub named origin"], ans: "B" },
      5 => { type: "true_false", q: "Only staged changes are included in a commit.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "According to the lesson, which command should you run first when you're unsure what state your repository is in?", opts: ["A) git status", "B) git log --oneline", "C) git diff HEAD~1 HEAD"], ans: "A" },
      7 => { type: "multiple_choice", q: "Which command stages only README.md for the next commit?", opts: ["A) git add README.md", "B) git stash README.md", "C) git restore README.md"], ans: "A" },
      8 => { type: "true_false", q: "The lesson recommends past-tense commit summaries like \"Added signup validation\" rather than present-tense ones like \"Add signup validation\".", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "How do you list only the commits that changed README.md?", opts: ["A) git diff README.md", "B) git status README.md", "C) git log -- README.md"], ans: "C" },
      10 => { type: "multiple_choice", q: "Which command shows the changes you have already staged for the next commit?", opts: ["A) git diff (with no arguments)", "B) git diff --staged", "C) git log --oneline"], ans: "B" },
      11 => { type: "true_false", q: "A Git branch is a full copy of every project file, which is why creating branches is slow and expensive.", opts: ["True", "False"], ans: "False" },
      12 => { type: "multiple_choice", q: "Which single command creates a new branch called feature/login and switches to it?", opts: ["A) git switch feature/login", "B) git branch feature/login", "C) git switch -c feature/login"], ans: "C" },
      13 => { type: "multiple_choice", q: "When does git merge stop and ask you to resolve a conflict?", opts: ["A) Whenever the two branches contain different commits", "B) When both branches changed the same lines in different ways", "C) Whenever the branch name contains a slash"], ans: "B" },
      14 => { type: "true_false", q: "After fixing a conflicted file, you stage it with git add before completing the merge with git commit.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "Why should you be careful about rebasing a branch that teammates have already pulled?", opts: ["A) Rebase rewrites history, which disrupts anyone who built on the old commits", "B) Rebase permanently deletes the branch once it finishes replaying", "C) Rebase automatically force-pushes the result to main"], ans: "A" },
      16 => { type: "multiple_choice", q: "Which command safely undoes a commit that is already on a shared branch?", opts: ["A) git reset --hard HEAD~1", "B) git restore --staged <file>", "C) git revert <commit>"], ans: "C" },
      17 => { type: "true_false", q: "A stash is a good long-term replacement for committing your work.", opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "What is origin commonly used to represent?", opts: ["A) The local staging area", "B) The current file", "C) The default remote"], ans: "C" },
      19 => { type: "multiple_choice", q: "Which command downloads remote changes without merging them into your current branch?", opts: ["A) git fetch", "B) git pull", "C) git merge origin/main"], ans: "A" },
      20 => { type: "true_false", q: "Small, focused commits usually create a healthier Git history.", opts: ["True", "False"], ans: "True" }
    }

    GitContent::LESSONS.each do |position, data|
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

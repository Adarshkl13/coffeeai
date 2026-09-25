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
      1 => { type: "multiple_choice", q: "What is Git mainly used for?", opts: ["A) Styling websites", "B) Version control", "C) Running databases"], ans: "B" },
      2 => { type: "true_false", q: "Version control makes it easier to recover old project states.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "Which command sets your global Git email?", opts: ["A) git email set", "B) git config --global user.email", "C) git profile email"], ans: "B" },
      4 => { type: "multiple_choice", q: "Which command creates a new Git repository in the current folder?", opts: ["A) git create", "B) git repo init", "C) git init"], ans: "C" },
      5 => { type: "true_false", q: "Only staged changes are included in a commit.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "Which command is best to check the current repository state?", opts: ["A) git status", "B) git save", "C) git sync"], ans: "A" },
      7 => { type: "multiple_choice", q: "Which command stages a file named app.js?", opts: ["A) git push app.js", "B) git add app.js", "C) git commit app.js"], ans: "B" },
      8 => { type: "true_false", q: "A commit message should explain the purpose of the change clearly.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "Which log format is great for quickly scanning history?", opts: ["A) git log --oneline", "B) git log --table", "C) git history --fast"], ans: "A" },
      10 => { type: "multiple_choice", q: "Which command shows staged changes waiting to be committed?", opts: ["A) git diff --staged", "B) git diff --origin", "C) git preview"], ans: "A" },
      11 => { type: "true_false", q: "Branches help isolate features and bug fixes from main.", opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "Which command creates and switches to a new branch?", opts: ["A) git switch -c feature/login", "B) git branch use feature/login", "C) git checkout new feature/login only"], ans: "A" },
      13 => { type: "multiple_choice", q: "What does merging do?", opts: ["A) Deletes history", "B) Combines branch work", "C) Removes staging"], ans: "B" },
      14 => { type: "true_false", q: "Merge conflicts happen when Git cannot combine overlapping changes automatically.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "Rebasing mainly does what?", opts: ["A) Replays commits onto a new base", "B) Deletes the repository", "C) Renames a branch only"], ans: "A" },
      16 => { type: "multiple_choice", q: "Which command is usually safest on shared history?", opts: ["A) git reset --hard", "B) git revert", "C) deleting .git"], ans: "B" },
      17 => { type: "true_false", q: "git stash can temporarily store unfinished changes.", opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "What is origin commonly used to represent?", opts: ["A) The default remote", "B) The local staging area", "C) The current file"], ans: "A" },
      19 => { type: "multiple_choice", q: "Which command downloads remote changes without merging them into your current branch?", opts: ["A) git pull", "B) git fetch", "C) git merge"], ans: "B" },
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

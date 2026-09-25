require_relative "../git_content"

namespace :content do
  desc "Create Git course and populate all 22 lessons"
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
      2 => "Installing and Configuring Git",
      3 => "Creating a Repository",
      4 => "Working Tree, Staging Area and Repository",
      5 => "Staging and Committing Changes",
      6 => "Ignoring Files with .gitignore",
      7 => "Viewing History with git log and git show",
      8 => "Comparing Changes with git diff",
      9 => "Fixing Mistakes with restore and --amend",
      10 => "Tagging Versions",
      11 => "How Git Stores Data: Objects and Refs",
      12 => "Creating and Switching Branches",
      13 => "Merging Branches",
      14 => "Resolving Merge Conflicts",
      15 => "Rebase, Interactive Rebase and Cherry-Pick",
      16 => "Stashing and Cleaning Work in Progress",
      17 => "Undoing Commits: reset vs revert",
      18 => "Recovering Work with reflog and bisect",
      19 => "Remote Repositories: clone, remote and push",
      20 => "Fetching, Pulling and Staying in Sync",
      21 => "Automating Checks with Git Hooks",
      22 => "Capstone: A Complete Git Workflow"
    }

    descriptions = {
      1 => "Understand what Git is, why version control matters, and make your first two commits.",
      2 => "Set your identity, default branch, editor, aliases and line-ending rules with git config and .gitattributes.",
      3 => "Turn a folder into a Git repository and understand what the .git folder holds.",
      4 => "Learn the three places a change lives and read git status output with confidence.",
      5 => "Stage exactly what you want and write commit messages your team will thank you for.",
      6 => "Keep secrets, caches and build output out of your repository with .gitignore.",
      7 => "Search and read project history with git log, filters, and git show.",
      8 => "Read diffs and compare the working tree, staging area and any two commits.",
      9 => "Discard edits, unstage files, recover old versions and fix your last commit.",
      10 => "Mark releases with annotated tags and understand semantic versioning.",
      11 => "Look inside the .git folder to see how blobs, trees, commits and refs store your project, and why branches are so cheap.",
      12 => "Create, switch, rename and delete branches, and understand HEAD.",
      13 => "Combine branches with fast-forward and three-way merges and clean up afterwards.",
      14 => "Create, read and resolve a real merge conflict step by step.",
      15 => "Replay commits onto a new base, tidy commits with rebase -i, and copy a single commit with git cherry-pick.",
      16 => "Put unfinished work aside with git stash, bring it back later, and remove untracked files safely with git clean.",
      17 => "Choose between git reset --soft, --mixed, --hard and git revert to undo commits safely.",
      18 => "Rescue \"lost\" commits with git reflog and find the commit that introduced a bug with git bisect.",
      19 => "Connect a local repository to GitHub, push branches and clone projects.",
      20 => "Download teammates' work with fetch and pull, handle rejected pushes and push tags.",
      21 => "Run your own scripts automatically before a commit or push, share them with your team, and know when to bypass them.",
      22 => "Put every skill together by building, branching, tagging and publishing a small project."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Why can you keep committing with Git even when you are offline?", opts: ["A) Git is local-first: the full history lives in the .git folder on your own machine", "B) Git keeps a temporary copy of GitHub in memory and uploads it once you reconnect", "C) It cannot; every commit is sent to a central server at the moment you make it"], ans: "A" },
      2 => { type: "true_false", q: "Running git config --global user.name Asha Rao (without quotes) saves the full name \"Asha Rao\".", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "What does git init create inside your project folder?", opts: ["A) A README.md file and a starter .gitignore that describe the project", "B) A hidden .git folder that stores the project's full history and settings", "C) A new remote repository on GitHub named origin"], ans: "B" },
      4 => { type: "multiple_choice", q: "git status -s prints \"MM menu.txt\". What does it mean?", opts: ["A) menu.txt was staged, then edited again after staging", "B) menu.txt was merged from two different branches", "C) menu.txt has a merge conflict that must be resolved before committing"], ans: "A" },
      5 => { type: "multiple_choice", q: "You create a new file ideas.txt and run git commit -am \"Add ideas\". What happens?", opts: ["A) ideas.txt is staged automatically and committed together with the other changes", "B) The commit skips ideas.txt, because -a only stages tracked files", "C) Git stages ideas.txt but waits for a second commit command"], ans: "B" },
      6 => { type: "true_false", q: "Adding a pattern to .gitignore has no effect on files that Git is already tracking.", opts: ["True", "False"], ans: "True" },
      7 => { type: "multiple_choice", q: "How do you list only the commits that changed README.md?", opts: ["A) git diff README.md", "B) git status --long README.md", "C) git log -- README.md"], ans: "C" },
      8 => { type: "multiple_choice", q: "You edit menu.txt and run git add menu.txt. Now git diff prints nothing. Why?", opts: ["A) Staging discarded the edit, so there is nothing left to show", "B) The change is now staged, and git diff --staged shows it", "C) git diff only works once the change has been committed"], ans: "B" },
      9 => { type: "multiple_choice", q: "Your last commit (not pushed yet) has a typo in its message. What is the best fix?", opts: ["A) git revert HEAD, then push the new commit", "B) git reset --hard HEAD~1 and retype everything", "C) git commit --amend -m \"Correct message\" to replace it"], ans: "C" },
      10 => { type: "true_false", q: "A plain git push also uploads all of your tags to the remote.", opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "You run git branch feature/x. What does Git write to disk?", opts: ["A) A full copy of every tracked file, saved in a new folder inside .git", "B) A small ref file that holds the hash of the current commit", "C) A new commit object that records the branch name and the time"], ans: "B" },
      12 => { type: "multiple_choice", q: "Which single command creates a new branch called feature/login and switches to it?", opts: ["A) git branch feature/login --switch", "B) git checkout feature/login", "C) git switch -c feature/login"], ans: "C" },
      13 => { type: "multiple_choice", q: "main has no new commits since feature/readme was created. What does git merge feature/readme (run on main) do?", opts: ["A) A fast-forward: main's pointer simply moves forward and no merge commit is made", "B) A three-way merge that always creates a new merge commit with two parent commits", "C) It stops with a conflict because the two branches point to different commits"], ans: "A" },
      14 => { type: "true_false", q: "After fixing a conflicted file, you stage it with git add before completing the merge with git commit.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "In a git rebase -i todo list, which command merges a commit into the one above it and keeps only the earlier commit's message?", opts: ["A) squash \u2014 combine it with the previous commit and edit both messages together", "B) reword \u2014 keep the commit as it is and change only its own message", "C) fixup \u2014 like squash, but this commit's own message is thrown away"], ans: "C" },
      16 => { type: "true_false", q: "When there is no conflict, git stash pop re-applies the newest stash and removes it from the stash list.", opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "Which command removes the last commit but keeps its changes staged, ready to commit again?", opts: ["A) git reset --soft HEAD~1", "B) git reset HEAD~1", "C) git reset --hard HEAD~1"], ans: "A" },
      18 => { type: "multiple_choice", q: "You ran git reset --hard HEAD~2 by mistake. What should you do first?", opts: ["A) Run git reflog, find the commit from before the reset, and git reset --hard to it", "B) Nothing can be done, because reset --hard permanently deletes the commits it removes", "C) Run git revert HEAD~2, which recreates the two commits on top of the branch"], ans: "A" },
      19 => { type: "multiple_choice", q: "What is origin/main?", opts: ["A) Your local main branch, renamed automatically after the first git push", "B) Your local record of where main was on origin the last time you fetched or pushed", "C) A branch that exists only on GitHub's servers and can never be seen on your computer"], ans: "B" },
      20 => { type: "multiple_choice", q: "git push is rejected with \"[rejected] main -> main (fetch first)\". What should you do?", opts: ["A) Run git push --force so that your local version replaces what is on GitHub", "B) Delete your local folder, clone the repository again, and redo your changes", "C) Integrate the remote commits first (e.g. git pull --rebase), then push again"], ans: "C" },
      21 => { type: "multiple_choice", q: "Your pre-commit hook is in .git/hooks/pre-commit. A teammate clones the repository and commits. What happens?", opts: ["A) The hook runs for them, because git clone copies the .git/hooks folder", "B) It does not run: .git/hooks is never cloned, so they must install it", "C) Git asks them once whether they trust the hook, then runs it"], ans: "B" },
      22 => { type: "true_false", q: "One big end-of-day commit with the message \"work\" gives a clearer history than several small, focused commits.", opts: ["True", "False"], ans: "False" }
    }

    GitContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)

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

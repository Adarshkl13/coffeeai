require_relative "../git_content"

namespace :content do
  desc "Create Git course and populate all 22 lessons"
  task git: :environment do
    course = Course.find_or_create_by!(slug: "git") do |c|
      c.title = "Git"
      c.description = "Learn Git from the basics of local version control. Then learn branching, merging, rebasing, stashing, remotes and good habits for working with a team."
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
      1 => "Learn what Git is and why version control matters. Make your first two commits.",
      2 => "Set your name, default branch, editor, aliases and line-ending rules with git config and .gitattributes.",
      3 => "Turn a folder into a Git repository. See what the .git folder holds.",
      4 => "Learn the three places a change can be. Read git status output with ease.",
      5 => "Stage just what you want. Write clear commit messages that help your team.",
      6 => "Keep secrets, caches and build output out of your repository with .gitignore.",
      7 => "Search and read project history with git log, filters and git show.",
      8 => "Read diffs. Compare the working tree, the staging area and any two commits.",
      9 => "Throw away edits, unstage files, get back old versions and fix your last commit.",
      10 => "Mark releases with annotated tags. Learn how semantic versioning works.",
      11 => "Look inside the .git folder. See how blobs, trees, commits and refs store your project, and why branches cost so little.",
      12 => "Create, switch, rename and delete branches. Learn what HEAD is.",
      13 => "Join branches with fast-forward and three-way merges. Clean up after.",
      14 => "Create, read and fix a real merge conflict step by step.",
      15 => "Move commits onto a new base and clean up commits with rebase -i. Copy one commit with git cherry-pick.",
      16 => "Save unfinished work with git stash and bring it back later. Remove untracked files safely with git clean.",
      17 => "Pick between git reset --soft, --mixed, --hard and git revert to undo commits safely.",
      18 => "Get back \"lost\" commits with git reflog. Find the commit that added a bug with git bisect.",
      19 => "Connect a local repository to GitHub. Push branches and clone projects.",
      20 => "Get your teammates' work with fetch and pull. Handle rejected pushes and push tags.",
      21 => "Run your own scripts before a commit or push. Share them with your team, and learn when to skip them.",
      22 => "Use every skill together. Build, branch, tag and publish a small project.",
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Why can you keep making commits with Git when you are offline?", opts: ["A) Git is local-first: the full history is in the .git folder on your own computer", "B) Git keeps a temporary copy of GitHub in memory and uploads it when you reconnect", "C) It cannot; every commit is sent to a central server the moment you make it"], ans: "A" },
      2 => { type: "true_false", q: "Running git config --global user.name Asha Rao (without quotes) saves the full name \"Asha Rao\".", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "What does git init create inside your project folder?", opts: ["A) A README.md file and a starter .gitignore that describe the project", "B) A hidden .git folder that stores the project's full history and settings", "C) A new remote repository on GitHub named origin"], ans: "B" },
      4 => { type: "multiple_choice", q: "git status -s prints \"MM menu.txt\". What does it mean?", opts: ["A) menu.txt was staged, then edited again after staging", "B) menu.txt was merged from two different branches", "C) menu.txt has a merge conflict that you must fix before you commit"], ans: "A" },
      5 => { type: "multiple_choice", q: "You create a new file ideas.txt and run git commit -am \"Add ideas\". What happens?", opts: ["A) ideas.txt is staged by itself and committed with the other changes", "B) The commit skips ideas.txt, because -a only stages tracked files", "C) Git stages ideas.txt but waits for a second commit command"], ans: "B" },
      6 => { type: "true_false", q: "Adding a pattern to .gitignore does nothing to files that Git already tracks.", opts: ["True", "False"], ans: "True" },
      7 => { type: "multiple_choice", q: "How do you list only the commits that changed README.md?", opts: ["A) git diff README.md", "B) git status --long README.md", "C) git log -- README.md"], ans: "C" },
      8 => { type: "multiple_choice", q: "You edit menu.txt and run git add menu.txt. Now git diff prints nothing. Why?", opts: ["A) Staging threw away the edit, so there is nothing left to show", "B) The change is now staged, and git diff --staged shows it", "C) git diff only works after the change is committed"], ans: "B" },
      9 => { type: "multiple_choice", q: "Your last commit (not pushed yet) has a typo in its message. What is the best fix?", opts: ["A) git revert HEAD, then push the new commit", "B) git reset --hard HEAD~1 and type everything again", "C) git commit --amend -m \"Correct message\" to replace it"], ans: "C" },
      10 => { type: "true_false", q: "A plain git push also uploads all of your tags to the remote.", opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "You run git branch feature/x. What does Git write to disk?", opts: ["A) A full copy of every tracked file, saved in a new folder inside .git", "B) A small ref file that holds the hash of the current commit", "C) A new commit object that stores the branch name and the time"], ans: "B" },
      12 => { type: "multiple_choice", q: "Which one command creates a new branch called feature/login and switches to it?", opts: ["A) git branch feature/login --switch", "B) git checkout feature/login", "C) git switch -c feature/login"], ans: "C" },
      13 => { type: "multiple_choice", q: "main has no new commits since feature/readme was created. You are on main. What does git merge feature/readme do?", opts: ["A) A fast-forward: main's pointer just moves forward and no merge commit is made", "B) A three-way merge that always makes a new merge commit with two parent commits", "C) It stops with a conflict because the two branches point to different commits"], ans: "A" },
      14 => { type: "true_false", q: "After you fix a conflicted file, you stage it with git add. Then you finish the merge with git commit.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "In a git rebase -i todo list, which command joins a commit into the one above it and keeps only the earlier commit's message?", opts: ["A) squash: join it with the previous commit and edit both messages together", "B) reword: keep the commit as it is and change only its own message", "C) fixup: like squash, but this commit's own message is thrown away"], ans: "C" },
      16 => { type: "true_false", q: "When there is no conflict, git stash pop applies the newest stash again and removes it from the stash list.", opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "Which command removes the last commit but keeps its changes staged, ready to commit again?", opts: ["A) git reset --soft HEAD~1", "B) git reset HEAD~1", "C) git reset --hard HEAD~1"], ans: "A" },
      18 => { type: "multiple_choice", q: "You ran git reset --hard HEAD~2 by mistake. What should you do first?", opts: ["A) Run git reflog, find the commit from before the reset, and git reset --hard to it", "B) Nothing can be done, because reset --hard deletes the removed commits forever", "C) Run git revert HEAD~2, which makes the two commits again on top of the branch"], ans: "A" },
      19 => { type: "multiple_choice", q: "What is origin/main?", opts: ["A) Your local main branch, renamed by Git after the first git push", "B) Your local record of where main was on origin the last time you fetched or pushed", "C) A branch that is only on GitHub's servers and can never be seen on your computer"], ans: "B" },
      20 => { type: "multiple_choice", q: "git push is rejected with \"[rejected] main -> main (fetch first)\". What should you do?", opts: ["A) Run git push --force so your local version replaces what is on GitHub", "B) Delete your local folder, clone the repository again, and redo your changes", "C) Add the remote commits first (for example git pull --rebase), then push again"], ans: "C" },
      21 => { type: "multiple_choice", q: "Your pre-commit hook is in .git/hooks/pre-commit. A teammate clones the repository and commits. What happens?", opts: ["A) The hook runs for them, because git clone copies the .git/hooks folder", "B) It does not run: .git/hooks is never cloned, so they must install it", "C) Git asks them once if they trust the hook, then runs it"], ans: "B" },
      22 => { type: "true_false", q: "One big commit at the end of the day with the message \"work\" gives a clearer history than several small, focused commits.", opts: ["True", "False"], ans: "False" }
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

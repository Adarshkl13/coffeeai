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
      1 => { type: "multiple_choice", q: "GitHub is best described as:", opts: ["A) A text editor", "B) A collaboration platform built around Git", "C) A replacement for the internet"], ans: "B" },
      2 => { type: "true_false", q: "A GitHub repository can be public or private.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "Which command copies a GitHub repository to your machine?", opts: ["A) git clone", "B) git upload", "C) git publish"], ans: "A" },
      4 => { type: "multiple_choice", q: "What is the main purpose of a README?", opts: ["A) Hide source code", "B) Explain the project", "C) Replace Git history"], ans: "B" },
      5 => { type: "true_false", q: "Feature branches are commonly used before opening pull requests.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "A pull request is mainly used to:", opts: ["A) Propose, review, and merge changes", "B) Delete all branches", "C) Install dependencies"], ans: "A" },
      7 => { type: "multiple_choice", q: "Good code review should focus on:", opts: ["A) Making the author feel bad", "B) Risks, correctness, and clarity", "C) Only line length"], ans: "B" },
      8 => { type: "true_false", q: "Issues can track bugs, feature requests, and planning tasks.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "A fork is:", opts: ["A) Your own copy of someone else's repository", "B) A deleted branch", "C) A deployment server"], ans: "A" },
      10 => { type: "multiple_choice", q: "What remote name usually refers to the original project when working from a fork?", opts: ["A) source", "B) upstream", "C) production"], ans: "B" },
      11 => { type: "true_false", q: "GitHub Flow usually relies on short-lived branches and pull requests.", opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "Which GitHub feature is best for grouping tasks toward a release goal?", opts: ["A) Milestones", "B) Avatars", "C) Stars"], ans: "A" },
      13 => { type: "multiple_choice", q: "Branch protection can require:", opts: ["A) Passing checks and reviews", "B) Deleting main daily", "C) No commits"], ans: "A" },
      14 => { type: "true_false", q: "GitHub Actions can run tests automatically on pull requests.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "A GitHub release is commonly paired with:", opts: ["A) A Git tag", "B) A deleted repository", "C) A CSS framework"], ans: "A" },
      16 => { type: "multiple_choice", q: "GitHub Discussions are best for:", opts: ["A) Community conversation and Q&A", "B) Replacing commits", "C) Staging files"], ans: "A" },
      17 => { type: "true_false", q: "Dependabot can help identify and propose fixes for insecure dependencies.", opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "Good repository permissions follow which idea?", opts: ["A) Everyone gets admin rights", "B) Least privilege", "C) No access control"], ans: "B" },
      19 => { type: "multiple_choice", q: "Pinned repositories on your profile help with:", opts: ["A) Professional presentation", "B) Hiding projects forever", "C) Replacing READMEs"], ans: "A" },
      20 => { type: "true_false", q: "A strong GitHub workflow combines code, reviews, planning, and automation.", opts: ["True", "False"], ans: "True" }
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

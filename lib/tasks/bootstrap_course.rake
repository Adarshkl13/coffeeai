require_relative "../bootstrap_content"

namespace :content do
  desc "Create Bootstrap course and populate all 20 lessons"
  task bootstrap: :environment do
    course = Course.find_or_create_by!(slug: "bootstrap") do |c|
      c.title       = "Bootstrap"
      c.description = "Bootstrap is the world's most popular CSS framework. Master the 12-column grid, utility classes, responsive components — buttons, cards, navbars, modals, forms, and more — to build polished UIs in minutes."
      c.color       = "#7952b3"
      c.icon        = "🅱️"
      c.position    = 13
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to Bootstrap",          2  => "The Grid System",
      3  => "Typography and Text Utilities",       4  => "Colors and Backgrounds",
      5  => "Spacing Utilities",                   6  => "Buttons",
      7  => "Cards",                               8  => "Navigation and Navbar",
      9  => "Forms",                               10 => "Tables",
      11 => "Alerts and Badges",                   12 => "Modals",
      13 => "Flexbox Utilities",                   14 => "Display, Sizing, and Borders",
      15 => "Progress Bars and Spinners",          16 => "Dropdowns and Collapse",
      17 => "List Groups and Breadcrumbs",         18 => "Tooltips, Popovers, and Toasts",
      19 => "Bootstrap Icons and Customization",   20 => "Bootstrap Review — Full Landing Page"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which Bootstrap class creates a centered, fixed-width container?",
              opts: ["A) container", "B) container-fluid", "C) container-fixed"], ans: "A" },
      2  => { type: "multiple_choice", q: "On a screen 768px or wider, how much of the row does an element with class=\"col-12 col-md-4\" take up?",
              opts: ["A) The full row, because col-12 always takes priority", "B) 4% of the row's width (one percent per column)", "C) One third of the row (4 of 12 columns)"], ans: "C" },
      3  => { type: "multiple_choice", q: "Which class makes text bold in Bootstrap?",
              opts: ["A) text-bold", "B) font-weight-bold", "C) fw-bold"], ans: "C" },
      4  => { type: "multiple_choice", q: "Which class adds a green background in Bootstrap?",
              opts: ["A) bg-success", "B) bg-green", "C) background-success"], ans: "A" },
      5  => { type: "multiple_choice", q: "What does the spacing class px-4 apply?",
              opts: ["A) Left and right padding at size 4 (1.5rem)", "B) Padding of 4px on all four sides", "C) Top and bottom padding at size 4 (1.5rem)"], ans: "A" },
      6  => { type: "true_false",      q: "The btn and btn-* classes only work on <button> elements, not on <a> tags.",
              opts: ["True", "False"], ans: "False" },
      7  => { type: "multiple_choice", q: "Which class makes all cards in a grid row the same height?",
              opts: ["A) card-full", "B) h-100", "C) card-stretch"], ans: "B" },
      8  => { type: "multiple_choice", q: "Which class pushes navbar links to the right side?",
              opts: ["A) float-end", "B) ms-auto", "C) navbar-right"], ans: "B" },
      9  => { type: "multiple_choice", q: "Which class should you add to a <select> dropdown to style it in Bootstrap 5?",
              opts: ["A) form-select", "B) form-control", "C) form-dropdown"], ans: "A" },
      10 => { type: "true_false",      q: "Adding table-bordered to a table removes all of its borders.",
              opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "Which class creates a dismissible Bootstrap alert?",
              opts: ["A) alert-closable", "B) alert-dismissible", "C) alert-removable"], ans: "B" },
      12 => { type: "multiple_choice", q: "A button opens a modal with data-bs-toggle=\"modal\". Which attribute on the button must match the modal's id?",
              opts: ["A) data-bs-id=\"myModal\"", "B) aria-controls=\"myModal\" on its own", "C) data-bs-target=\"#myModal\""], ans: "C" },
      13 => { type: "multiple_choice", q: "Which class enables flexbox on a div in Bootstrap?",
              opts: ["A) flex", "B) d-flex", "C) display-flex"], ans: "B" },
      14 => { type: "multiple_choice", q: "Which classes hide an element on small screens but show it as a block from the md breakpoint up?",
              opts: ["A) d-md-none d-block", "B) w-0 w-md-100", "C) d-none d-md-block"], ans: "C" },
      15 => { type: "true_false",      q: "To animate a progress bar's stripes, you add progress-bar-animated together with progress-bar-striped.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Which data attribute is used to trigger a Bootstrap dropdown?",
              opts: ["A) data-bs-menu", "B) data-bs-toggle=\"collapse\"", "C) data-bs-toggle=\"dropdown\""], ans: "C" },
      17 => { type: "multiple_choice", q: "Which class removes outer borders from a list group (for embedding in cards)?",
              opts: ["A) list-group-borderless", "B) list-group-flush", "C) list-group-clean"], ans: "B" },
      18 => { type: "true_false",      q: "Bootstrap tooltips require manual JavaScript initialization with new bootstrap.Tooltip(element).",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "How do you add a Bootstrap Icon to your page?",
              opts: ["A) <i class=\"bi bi-house\">", "B) <icon class=\"bi-house\">", "C) <img src=\"bi-house.svg\">"], ans: "A" },
      20 => { type: "multiple_choice", q: "What is the difference between the fixed-top and sticky-top classes on a navbar?",
              opts: ["A) fixed-top is always pinned to the viewport; sticky-top scrolls until it reaches the top, then sticks", "B) They are aliases: both keep the navbar pinned to the top of the viewport at all times", "C) sticky-top is always pinned to the viewport; fixed-top scrolls away with the page content"], ans: "A" }
    }

    BootstrapContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

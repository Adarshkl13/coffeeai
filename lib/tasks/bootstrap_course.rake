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
              opts: ["A) container-fluid", "B) container", "C) container-fixed"], ans: "B" },
      2  => { type: "multiple_choice", q: "How many columns does Bootstrap's grid system use?",
              opts: ["A) 10", "B) 16", "C) 12"], ans: "C" },
      3  => { type: "multiple_choice", q: "Which class makes text bold in Bootstrap?",
              opts: ["A) text-bold", "B) fw-bold", "C) font-weight-bold"], ans: "B" },
      4  => { type: "multiple_choice", q: "Which class adds a green background in Bootstrap?",
              opts: ["A) bg-green", "B) bg-success", "C) background-success"], ans: "B" },
      5  => { type: "multiple_choice", q: "Which class adds padding on all sides with size 3?",
              opts: ["A) padding-3", "B) p-3", "C) pad-3"], ans: "B" },
      6  => { type: "true_false",      q: "To create a Bootstrap button you need both 'btn' and a variant class like 'btn-primary'.",
              opts: ["True", "False"], ans: "True" },
      7  => { type: "multiple_choice", q: "Which class makes all cards in a grid row the same height?",
              opts: ["A) card-full", "B) h-100", "C) card-stretch"], ans: "B" },
      8  => { type: "multiple_choice", q: "Which class pushes navbar links to the right side?",
              opts: ["A) float-end", "B) navbar-right", "C) ms-auto"], ans: "C" },
      9  => { type: "multiple_choice", q: "Which Bootstrap class styles a text input element?",
              opts: ["A) input-control", "B) form-control", "C) form-input"], ans: "B" },
      10 => { type: "true_false",      q: "Adding 'table-striped' to a Bootstrap table alternates the background color of rows.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "Which class creates a dismissible Bootstrap alert?",
              opts: ["A) alert-closable", "B) alert-dismissible", "C) alert-removable"], ans: "B" },
      12 => { type: "multiple_choice", q: "Which data attribute opens a Bootstrap modal?",
              opts: ["A) data-bs-open", "B) data-bs-show", "C) data-bs-toggle=\"modal\""], ans: "C" },
      13 => { type: "multiple_choice", q: "Which class enables flexbox on a div in Bootstrap?",
              opts: ["A) flex", "B) d-flex", "C) display-flex"], ans: "B" },
      14 => { type: "multiple_choice", q: "Which class makes an element take 50% of its container's width?",
              opts: ["A) width-50", "B) w-50", "C) col-50"], ans: "B" },
      15 => { type: "true_false",      q: "Adding 'progress-bar-animated' to a Bootstrap progress bar makes it move.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Which data attribute is used to trigger a Bootstrap dropdown?",
              opts: ["A) data-bs-menu", "B) data-bs-toggle=\"collapse\"", "C) data-bs-toggle=\"dropdown\""], ans: "C" },
      17 => { type: "multiple_choice", q: "Which class removes outer borders from a list group (for embedding in cards)?",
              opts: ["A) list-group-borderless", "B) list-group-flush", "C) list-group-clean"], ans: "B" },
      18 => { type: "true_false",      q: "Bootstrap tooltips require manual JavaScript initialization with new bootstrap.Tooltip(element).",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "How do you add a Bootstrap Icon to your page?",
              opts: ["A) <icon class=\"bi-house\">", "B) <i class=\"bi bi-house\">", "C) <img src=\"bi-house.svg\">"], ans: "B" },
      20 => { type: "multiple_choice", q: "Which Bootstrap class makes a navbar stick to the top as the user scrolls?",
              opts: ["A) fixed-top", "B) navbar-fixed", "C) sticky-top"], ans: "C" }
    }

    BootstrapContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_create_by!(course_lesson: lesson) do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

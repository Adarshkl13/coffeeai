require_relative "../bootstrap_content"

namespace :content do
  desc "Create Bootstrap course and populate all 20 lessons"
  task bootstrap: :environment do
    course = Course.find_or_create_by!(slug: "bootstrap") do |c|
      c.title       = "Bootstrap"
      c.description = "Bootstrap is the most popular CSS framework in the world. Learn the 12-column grid, utility classes and responsive components like buttons, cards, navbars, modals and forms. Build clean pages in minutes."
      c.color       = "#7952b3"
      c.icon        = "🅱️"
      c.position    = 13
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to Bootstrap",          2  => "The Grid System",
      3  => "Typography and Text Utilities",       4  => "Colors and Backgrounds",
      5  => "Spacing Utilities",                   6  => "Flexbox Utilities",
      7  => "Display, Sizing, and Borders",        8  => "Buttons and Icons",
      9  => "Cards",                               10 => "Navigation and Navbar",
      11 => "Offcanvas",                           12 => "Forms",
      13 => "Tables",                              14 => "Alerts, Badges, and Progress",
      15 => "Modals",                              16 => "Dropdowns, Collapse, and Accordion",
      17 => "List Groups, Images, and Carousel",    18 => "Tooltips, Popovers, and Toasts",
      19 => "Color Modes and Customization",       20 => "Capstone: Landing Page"
    }

    descriptions = {
      1  => "Add Bootstrap 5.3 from the CDN. Learn how components, utilities and breakpoint infixes like col-md-6 work.",
      2  => "Build responsive layouts with containers, rows and the 12-column grid across six breakpoints. Use gutters, offsets and row-cols.",
      3  => "Style text with display headings, lead, font-size, weight, alignment and link utilities. Use text-body-secondary, not the old text-muted.",
      4  => "Add theme colours with text-*, bg-*, text-bg-*, subtle and emphasis variants, gradients and opacity helpers.",
      5  => "Set margin, padding and gap with Bootstrap's spacing scale. Use responsive infixes and RTL-friendly start/end classes.",
      6  => "Place and align items with d-flex, direction, justify-content, align-items, wrapping and grow/shrink. Push items with ms-auto.",
      7  => "Show and hide elements at each breakpoint and size them with width/height utilities. Add borders, rounded corners, shadows and position helpers.",
      8  => "Use button variants, sizes, states and groups. Add accessible Bootstrap Icons to buttons and links.",
      9  => "Build cards with bodies, images, headers and footers. Place them in responsive card grids with equal heights.",
      10 => "Make navs, tabs, pills and a responsive navbar with a toggler. Add dark mode with data-bs-theme, sticky or fixed position, and breadcrumbs and pagination with aria-current.",
      11 => "Slide panels in from any edge with the offcanvas component. Learn backdrop options, responsive offcanvas and the JavaScript API.",
      12 => "Style accessible forms with form-control, form-select, checks, switches, input groups and floating labels. Add Bootstrap validation feedback.",
      13 => "Show data in clear, responsive tables. Use striped, hover, bordered, compact and contextual table classes.",
      14 => "Give feedback with alerts, badges, progress bars, spinners and placeholders. Use the correct 5.3 markup and ARIA attributes.",
      15 => "Build accessible modal dialogs. Pick sizes, fullscreen or static-backdrop options, and control them with the JavaScript API and events.",
      16 => "Show content when needed with dropdown menus, collapse panels and accordions that keep one panel open at a time.",
      17 => "Show groups of content with list groups and responsive images and figures (img-fluid, img-thumbnail). Build an accessible carousel with indicators and controls.",
      18 => "Add tooltips and popovers, which you must turn on with JavaScript. Show accessible toast messages.",
      19 => "Switch between light and dark colour modes with data-bs-theme. Change Bootstrap with CSS variables and --bs-btn-* button variables. Extend it with Sass theme colours, the Utilities API and builds that import only what you need.",
      20 => "Build a full responsive landing page. It has an offcanvas navbar, feature grid, pricing cards, FAQ, checked form and dark-mode toggle.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "A page puts its content in <div class=\"container-md\">. How wide is that container on a 600px-wide phone?",
              opts: ["A) 540px, the same as a plain container", "B) 100% wide; md starts at 768px", "C) 720px, with a sideways scrollbar"], ans: "B" },
      2  => { type: "multiple_choice", q: "An element has class=\"col-6 col-lg-3\". How much of its row does it use on an 800px-wide tablet?",
              opts: ["A) 3 of 12 columns, a quarter", "B) 12 of 12 columns, full width", "C) 6 of 12 columns, half"], ans: "C" },
      3  => { type: "true_false",      q: "In Bootstrap 5.3, text-muted is the suggested class for light grey text.",
              opts: ["True", "False"], ans: "False" },
      4  => { type: "multiple_choice", q: "Which class gives an element a yellow warning background and also sets a text colour that is easy to read?",
              opts: ["A) text-bg-warning", "B) bg-warning text-opacity-75", "C) bg-warning-subtle border"], ans: "A" },
      5  => { type: "multiple_choice", q: "A div has class=\"pt-2 px-md-4\". What padding does it have on a 1024px-wide screen?",
              opts: ["A) 0.5rem top and 0.5rem on each side", "B) 1.5rem on top, left, right and bottom", "C) 0.5rem top; 1.5rem left and right"], ans: "C" },
      6  => { type: "multiple_choice", q: "Inside <div class=\"d-flex align-items-center\"> you have a brand name, two links and a Login button. Which class on the Login button moves it to the far right?",
              opts: ["A) me-auto", "B) ms-auto", "C) justify-content-end"], ans: "B" },
      7  => { type: "true_false",      q: "An element with the classes d-none d-md-block is hidden on screens under 768px wide. From 768px up, it shows as a block.",
              opts: ["True", "False"], ans: "True" },
      8  => { type: "multiple_choice", q: "<button type=\"button\" class=\"btn btn-danger\"><i class=\"bi bi-trash\"></i></button> has no text. What should you add so screen readers say what it does?",
              opts: ["A) aria-label=\"Delete\" on the button", "B) alt=\"Delete icon\" on the <i> element", "C) role=\"button\" on the <i> element"], ans: "A" },
      9  => { type: "multiple_choice", q: "Three cards sit in <div class=\"row row-cols-1 row-cols-md-3 g-4\">, each as .col > .card. Their text has different lengths, so the card bottoms do not line up. What is the Bootstrap 5.3 fix?",
              opts: ["A) Wrap the row in card-deck", "B) Add h-100 to each .card", "C) Add align-items-end to the row"], ans: "B" },
      10 => { type: "true_false",      q: "In Bootstrap 5.3, the suggested way to make a dark navbar is to add the navbar-dark class to the <nav>.",
              opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "You want a filter panel that slides in as offcanvas on phones. From 992px up, it should be a normal sidebar that is always visible. What should you do?",
              opts: ["A) Add .d-lg-block to a normal .offcanvas panel", "B) Use .offcanvas-start with data-bs-scroll=\"true\"", "C) Replace .offcanvas with .offcanvas-lg"], ans: "C" },
      12 => { type: "multiple_choice", q: "This floating label never moves up and covers the typed text: <div class=\"form-floating\"><label for=\"e\">Email</label><input type=\"email\" class=\"form-control\" id=\"e\" placeholder=\"you@college.edu\"></div>. What is the bug?",
              opts: ["A) The <label> must come after the <input>", "B) The <input> also needs the .form-label class", "C) The placeholder attribute must be removed"], ans: "A" },
      13 => { type: "true_false",      q: "Adding .table-responsive to the <table> element itself does not make it scroll. The class goes on a <div> around the table.",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "In the suggested Bootstrap 5.3 progress bar markup, where do role=\"progressbar\" and aria-valuenow go?",
              opts: ["A) On the inner .progress-bar element", "B) On the outer .progress wrapper", "C) On a visually-hidden span inside the bar"], ans: "B" },
      15 => { type: "multiple_choice", q: "A modal must NOT close when the user clicks the dark backdrop or presses Esc. Which attributes do you add to the .modal element?",
              opts: ["A) data-bs-dismiss=\"never\" data-bs-auto-close=\"outside\"", "B) data-bs-backdrop=\"false\" data-bs-focus=\"false\"", "C) data-bs-backdrop=\"static\" data-bs-keyboard=\"false\""], ans: "C" },
      16 => { type: "true_false",      q: "In a Bootstrap 5.3 accordion, you put data-bs-parent=\"#faq\" on each .accordion-button so that opening one panel closes the others.",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "A Bootstrap 5.3 carousel shows an empty slide area when the page loads, but the three images exist. Which markup fix makes the first slide show?",
              opts: ["A) Add data-bs-ride=\"carousel\" to every .carousel-item", "B) Add data-bs-interval=\"0\" to the .carousel element", "C) Add the active class to exactly one .carousel-item"], ans: "C" },
      18 => { type: "multiple_choice", q: "A button has data-bs-toggle=\"tooltip\" and data-bs-title=\"Save draft\". The Bootstrap bundle is loaded, but hovering shows nothing. What is missing?",
              opts: ["A) A title attribute, because data-bs-title is ignored in Bootstrap 5.3", "B) JavaScript that creates new bootstrap.Tooltip(el) for the element", "C) The separate Popper script, which the bundle does not include"], ans: "B" },
      19 => { type: "true_false",      q: "Adding :root { --bs-primary: #7952b3; } after bootstrap.min.css leaves .btn-primary buttons their default blue.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "You use class=\"navbar fixed-top\", and now the hero heading hides under the navbar. What is the usual fix?",
              opts: ["A) Add top padding to <body>, or use sticky-top instead", "B) Add z-index: -1 to the navbar so the hero shows through", "C) Replace the container with container-fluid inside the navbar"], ans: "A" }
    }

    BootstrapContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position], body: data[:body], starter_code: data[:starter_code])

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

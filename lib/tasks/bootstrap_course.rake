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
      1  => "Set up Bootstrap 5.3 from the CDN and learn how components, utilities and responsive breakpoint infixes like col-md-6 work.",
      2  => "Build responsive layouts with containers, rows and the 12-column grid across six breakpoints, plus gutters, offsets and row-cols.",
      3  => "Style text with display headings, lead, font-size, weight, alignment and link utilities, using text-body-secondary instead of the deprecated text-muted.",
      4  => "Apply theme colours with text-*, bg-*, text-bg-*, subtle and emphasis variants, gradients and opacity helpers.",
      5  => "Control margin, padding and gap with Bootstrap's spacing scale, responsive infixes and RTL-friendly start/end classes.",
      6  => "Arrange and align items with d-flex, direction, justify-content, align-items, wrapping, grow/shrink and the ms-auto push trick.",
      7  => "Show and hide elements per breakpoint, size them with width/height utilities, and finish them with borders, rounded corners, shadows and positioning helpers.",
      8  => "Use button variants, sizes, states and groups, and add accessible Bootstrap Icons to buttons and links.",
      9  => "Build cards with bodies, images, headers and footers, and lay them out in equal-height responsive card grids.",
      10 => "Create navs, tabs, pills and a responsive navbar with a collapsing toggler, dark mode via data-bs-theme, sticky or fixed positioning, plus breadcrumbs and pagination marked up with aria-current.",
      11 => "Slide panels in from any edge with the offcanvas component, including backdrop options, responsive offcanvas and the JavaScript API.",
      12 => "Style accessible forms with form-control, form-select, checks, switches, input groups and floating labels, and add Bootstrap validation feedback.",
      13 => "Present data in readable, responsive tables with striped, hover, bordered, compact and contextual table classes.",
      14 => "Give feedback with alerts, badges, progress bars, spinners and placeholders, using the correct 5.3 markup and ARIA attributes.",
      15 => "Build accessible modal dialogs, choose sizes and fullscreen or static-backdrop options, and control them with the JavaScript API and events.",
      16 => "Reveal content on demand with dropdown menus, collapse panels and accordions that keep one panel open at a time.",
      17 => "Show collections of content with list groups, responsive images and figures (img-fluid, img-thumbnail), and an accessible carousel with indicators and controls.",
      18 => "Add opt-in tooltips and popovers with JavaScript initialisation, and show accessible toast notifications.",
      19 => "Switch light and dark colour modes with data-bs-theme and customise Bootstrap with CSS variables, --bs-btn-* button variables, and extend it with Sass theme colours, the Utilities API and import-only-what-you-need builds.",
      20 => "Build a complete responsive landing page with an offcanvas navbar, feature grid, pricing cards, FAQ, validated form and dark-mode toggle."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "A page wraps its content in <div class=\"container-md\">. How wide is that container on a 600px-wide phone?",
              opts: ["A) 540px, the same as a plain container", "B) 100% wide; md starts at 768px", "C) 720px, with a sideways scrollbar"], ans: "B" },
      2  => { type: "multiple_choice", q: "An element has class=\"col-6 col-lg-3\". How much of its row does it take on an 800px-wide tablet?",
              opts: ["A) 3 of 12 columns, a quarter", "B) 12 of 12 columns, full width", "C) 6 of 12 columns, half"], ans: "C" },
      3  => { type: "true_false",      q: "In Bootstrap 5.3, text-muted is the recommended class for grey, de-emphasised text.",
              opts: ["True", "False"], ans: "False" },
      4  => { type: "multiple_choice", q: "Which class gives an element a yellow warning background and automatically sets a readable text colour?",
              opts: ["A) text-bg-warning", "B) bg-warning text-opacity-75", "C) bg-warning-subtle border"], ans: "A" },
      5  => { type: "multiple_choice", q: "A div has class=\"pt-2 px-md-4\". What padding does it have on a 1024px-wide screen?",
              opts: ["A) 0.5rem top and 0.5rem on each side", "B) 1.5rem on top, left, right and bottom", "C) 0.5rem top; 1.5rem left and right"], ans: "C" },
      6  => { type: "multiple_choice", q: "Inside <div class=\"d-flex align-items-center\">, you have a brand name, two links and a Login button. Which class on the Login button pins it to the far right edge?",
              opts: ["A) me-auto", "B) ms-auto", "C) justify-content-end"], ans: "B" },
      7  => { type: "true_false",      q: "An element with the classes d-none d-md-block is hidden on screens narrower than 768px and shown as a block from 768px upward.",
              opts: ["True", "False"], ans: "True" },
      8  => { type: "multiple_choice", q: "<button type=\"button\" class=\"btn btn-danger\"><i class=\"bi bi-trash\"></i></button> has no text. What should you add so screen readers announce what it does?",
              opts: ["A) aria-label=\"Delete\" on the button", "B) alt=\"Delete icon\" on the <i> element", "C) role=\"button\" on the <i> element"], ans: "A" },
      9  => { type: "multiple_choice", q: "Three cards sit in <div class=\"row row-cols-1 row-cols-md-3 g-4\">, each as .col > .card. Their text lengths differ, so the card bottoms don't line up. What is the Bootstrap 5.3 fix?",
              opts: ["A) Wrap the row in card-deck", "B) Add h-100 to each .card", "C) Add align-items-end to the row"], ans: "B" },
      10 => { type: "true_false",      q: "In Bootstrap 5.3, the recommended way to make a dark navbar is to add the navbar-dark class to the <nav>.",
              opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "You want a filter panel that is a slide-in offcanvas on phones but shows as a normal, always-visible sidebar from 992px up. What should you do?",
              opts: ["A) Add .d-lg-block to a normal .offcanvas panel", "B) Use .offcanvas-start with data-bs-scroll=\"true\"", "C) Replace .offcanvas with .offcanvas-lg"], ans: "C" },
      12 => { type: "multiple_choice", q: "This floating label never floats and covers the typed text: <div class=\"form-floating\"><label for=\"e\">Email</label><input type=\"email\" class=\"form-control\" id=\"e\" placeholder=\"you@college.edu\"></div>. What is the bug?",
              opts: ["A) The <label> must come after the <input>", "B) The <input> also needs the .form-label class", "C) The placeholder attribute must be removed"], ans: "A" },
      13 => { type: "true_false",      q: "Adding .table-responsive directly to the <table> element does not make it scroll; the class belongs on a <div> that wraps the table.",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "In Bootstrap 5.3's recommended progress bar markup, where do role=\"progressbar\" and aria-valuenow go?",
              opts: ["A) On the inner .progress-bar element", "B) On the outer .progress wrapper", "C) On a visually-hidden span in the bar"], ans: "B" },
      15 => { type: "multiple_choice", q: "A modal must NOT close when the user clicks the dark backdrop or presses Esc. Which attributes do you add to the .modal element?",
              opts: ["A) data-bs-dismiss=\"never\" data-bs-auto-close=\"outside\"", "B) data-bs-backdrop=\"false\" data-bs-focus=\"false\"", "C) data-bs-backdrop=\"static\" data-bs-keyboard=\"false\""], ans: "C" },
      16 => { type: "true_false",      q: "In a Bootstrap 5.3 accordion, data-bs-parent=\"#faq\" should be placed on each .accordion-button so that opening one panel closes the others.",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "A Bootstrap 5.3 carousel's slide area is completely empty when the page loads, although the three images exist. Which markup fix makes the first slide show?",
              opts: ["A) Add data-bs-ride=\"carousel\" to every .carousel-item", "B) Add data-bs-interval=\"0\" to the .carousel element", "C) Add the active class to exactly one .carousel-item"], ans: "C" },
      18 => { type: "multiple_choice", q: "A button has data-bs-toggle=\"tooltip\" and data-bs-title=\"Save draft\", and the Bootstrap bundle is loaded, but hovering shows nothing. What is missing?",
              opts: ["A) A title attribute, because data-bs-title is ignored in Bootstrap 5.3", "B) JavaScript that creates new bootstrap.Tooltip(el) for the element", "C) The separate Popper script, which the bundle does not include"], ans: "B" },
      19 => { type: "true_false",      q: "Adding :root { --bs-primary: #7952b3; } after bootstrap.min.css leaves .btn-primary buttons their default blue.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "You use class=\"navbar fixed-top\" and the hero heading now hides under the navbar. What is the usual fix?",
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

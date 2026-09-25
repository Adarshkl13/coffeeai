require_relative "../django_content"

namespace :content do
  desc "Create Django course and populate all 20 lessons"
  task django: :environment do
    course = Course.find_or_create_by!(slug: "django") do |c|
      c.title       = "Django"
      c.description = "Django is Python's batteries-included web framework. Learn project structure, URLs, views, ORM, migrations, forms, class-based views, and authentication."
      c.color       = "#16a34a"
      c.icon        = "🌿"
      c.position    = 13
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to Django",
      2  => "Project Structure and Settings",
      3  => "URLs and Views",
      4  => "Models and the ORM",
      5  => "Migrations",
      6  => "QuerySet API",
      7  => "Django Admin",
      8  => "Forms and Validation",
      9  => "Class-Based Views",
      10 => "Authentication and Permissions",
      11 => "Templates and Template Language",
      12 => "Static Files and Media",
      13 => "Generic Editing Views",
      14 => "Sessions and Messages",
      15 => "Middleware",
      16 => "Testing Django Apps",
      17 => "Django REST Basics",
      18 => "Performance and Caching",
      19 => "Deployment and Production Settings",
      20 => "Django Final Review"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "What does Django's MVT architecture stand for?", opts: ["A) Model View Template", "B) Module View Test", "C) Model Variable Template"], ans: "A" },
      2  => { type: "true_false", q: "INSTALLED_APPS in settings.py controls which Django apps are active in a project.", opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "Which file usually maps URL patterns to view functions in a Django app?", opts: ["A) models.py", "B) urls.py", "C) admin.py"], ans: "B" },
      4  => { type: "multiple_choice", q: "Which Django model field is commonly used for email addresses?", opts: ["A) EmailField", "B) MailField", "C) AddressField"], ans: "A" },
      5  => { type: "true_false", q: "makemigrations creates migration files, and migrate applies them to the database.", opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "Which QuerySet method is used to narrow records by conditions?", opts: ["A) filter()", "B) narrow()", "C) where()"], ans: "A" },
      7  => { type: "multiple_choice", q: "What command creates an admin user for the Django admin panel?", opts: ["A) python manage.py createadmin", "B) python manage.py superuser", "C) python manage.py createsuperuser"], ans: "C" },
      8  => { type: "true_false", q: "Django forms can handle both rendering fields and validating submitted data.", opts: ["True", "False"], ans: "True" },
      9  => { type: "multiple_choice", q: "Which class-based view is commonly used to display a list of objects?", opts: ["A) ListView", "B) TableView", "C) ObjectsView"], ans: "A" },
      10 => { type: "multiple_choice", q: "Which Django mixin helps restrict a view to logged-in users?", opts: ["A) LoginRequiredMixin", "B) AuthOnlyMixin", "C) ProtectedUserMixin"], ans: "A" },
      11 => { type: "multiple_choice", q: "Which Django template tag is used to build a URL from a named route?", opts: ["A) {% path %}", "B) {% url %}", "C) {% route %}"], ans: "B" },
      12 => { type: "true_false", q: "Static files and user-uploaded media files should usually be handled with different settings in Django.", opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "Which generic editing view is commonly used to create a new object?", opts: ["A) BuildView", "B) CreateView", "C) NewObjectView"], ans: "B" },
      14 => { type: "multiple_choice", q: "Which Django feature is best for showing a one-time success message after a redirect?", opts: ["A) Sessions", "B) Messages framework", "C) Signals"], ans: "B" },
      15 => { type: "true_false", q: "Middleware runs on every request and response, so it should stay lightweight.", opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Which Django class is commonly used as the base for database-backed tests?", opts: ["A) DjangoCase", "B) AppTest", "C) TestCase"], ans: "C" },
      17 => { type: "multiple_choice", q: "In Django REST Framework, what converts model data into JSON-friendly output?", opts: ["A) Serializer", "B) Router", "C) Middleware"], ans: "A" },
      18 => { type: "true_false", q: "Caching can reduce repeated expensive queries and page rendering in Django.", opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Which manage.py command collects production static assets into STATIC_ROOT?", opts: ["A) gatherstatic", "B) collectstatic", "C) buildstatic"], ans: "B" },
      20 => { type: "multiple_choice", q: "Which area should you learn next if you want Django to serve JSON APIs for a frontend app?", opts: ["A) WhiteNoise", "B) Django REST Framework", "C) WSGI internals"], ans: "B" }
    }

    DjangoContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]
        l.description = ""
      end

      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

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

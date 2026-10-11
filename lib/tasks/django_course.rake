require_relative "../django_content"

namespace :content do
  desc "Create Django course and populate all 21 lessons"
  task django: :environment do
    course = Course.find_or_create_by!(slug: "django") do |c|
      c.title       = "Django"
      c.description = "Django is a Python web framework that comes with most tools you need. Learn URLs, views, templates, the ORM, migrations, forms, class-based views, authentication, testing, APIs and deployment with real Django 6.1 code."
      c.color       = "#16a34a"
      c.icon        = "🌿"
      c.position    = 13
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to Django",               2  => "Project Structure and Settings",
      3  => "URLs and Views",                       4  => "Templates and the Template Language",
      5  => "Models and the ORM",                   6  => "Migrations",
      7  => "QuerySet API",                         8  => "Managers, Constraints and Transactions",
      9  => "Django Admin",                         10 => "Forms and Validation",
      11 => "Class-Based Views",                    12 => "Generic Editing Views",
      13 => "Authentication and Permissions",       14 => "Sessions, Cookies and Messages",
      15 => "Static Files and Media",               16 => "Middleware and Signals",
      17 => "Testing Django Apps",                  18 => "REST APIs and Django REST Framework",
      19 => "Performance and Caching",              20 => "Deployment and Production Settings",
      21 => "Capstone Project: Mini Blog"
    }

    descriptions = {
      1  => "See how Django turns a request into a response. Run your first real views and URLs.",
      2  => "Learn about projects, apps and settings.py. Keep secrets in environment variables.",
      3  => "Connect URLs to views with path converters and named routes. Return HTML, JSON, redirects and 404s.",
      4  => "Build pages with variables, filters, tags, custom filters and template inheritance. Learn how auto-escaping stops XSS.",
      5  => "Describe database tables as model classes with fields and relationships. Save, read, update and delete rows.",
      6  => "Use makemigrations and migrate to change your database safely. Write data migrations with RunPython and custom management commands.",
      7  => "Get data with filter, exclude, lookups, Q and F objects, aggregates and annotations. Learn how lazy QuerySets work.",
      8  => "Keep rules next to your data with custom QuerySets, model methods, clean(), database constraints and transaction.atomic().",
      9  => "Add models to the admin site. Change list columns, filters, search and actions.",
      10 => "Check user input with Form and ModelForm and write clean methods. Protect forms with CSRF tokens.",
      11 => "Replace repeated view code with TemplateView, ListView and DetailView. Add pagination.",
      12 => "Build create, update and delete pages with CreateView, UpdateView and DeleteView.",
      13 => "Log users in and protect views. Use groups and permissions, and set up a custom user model.",
      14 => "Remember visitors with sessions and cookies. Show one-time notices with the messages framework.",
      15 => "Serve CSS and JavaScript with collectstatic and the STORAGES setting. Handle user uploads as media files.",
      16 => "Write middleware that runs around every request. Respond to events like post_save with signals.",
      17 => "Write fast, separate tests with TestCase, the test Client and Django's assertions.",
      18 => "Build a JSON API in plain Django. Then see how Django REST Framework's serializers, viewsets and routers do it for you.",
      19 => "Find and fix N+1 queries with select_related and prefetch_related. Add caching and background tasks where they help.",
      20 => "Get a Django site ready for production. Use check --deploy, security settings, Gunicorn or Uvicorn and a release checklist.",
      21 => "Put models, forms, views, templates, login and messages together into a working mini blog. Then add more to it.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "urls.py has path(\"hello/<str:name>/\", hello). How does Django call the view for GET /hello/Priya/?",
              opts: ["A) hello(request), with \"Priya\" available in request.GET", "B) hello(request, name=\"Priya\")", "C) hello(\"Priya\"), without a request object"], ans: "B" },
      2  => { type: "true_false",      q: "DEBUG = os.environ.get(\"DJANGO_DEBUG\", \"False\") makes DEBUG act as false when the variable is not set.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "The only URL pattern is path(\"posts/<int:pk>/\", post_detail). What happens for a request to /posts/abc/?",
              opts: ["A) A 404 Not Found response", "B) post_detail runs with pk set to the string \"abc\"", "C) A 500 error when the view calls int(\"abc\")"], ans: "A" },
      4  => { type: "multiple_choice", q: "A template has {{ comment }} and the view passes comment = \"<b>Hi</b>\". What does the browser show?",
              opts: ["A) The word Hi in bold", "B) Nothing, because HTML in variables is removed", "C) The text <b>Hi</b>, because Django escapes it"], ans: "C" },
      5  => { type: "multiple_choice", q: "What is the suggested way to link a Post to the user who wrote it?",
              opts: ["A) models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)", "B) models.ForeignKey(\"auth.User\", on_delete=models.CASCADE)", "C) models.CharField(max_length=150) holding the username"], ans: "A" },
      6  => { type: "true_false",      q: "Running python manage.py makemigrations changes the tables in your database right away.",
              opts: ["True", "False"], ans: "False" },
      7  => { type: "multiple_choice", q: "You run qs = Post.objects.filter(published=True), then qs = qs.filter(views__gte=100). When does SQL run?",
              opts: ["A) Twice, once after each of the two lines", "B) Once, right after the first line", "C) Not yet: only when the QuerySet is evaluated"], ans: "C" },
      8  => { type: "multiple_choice", q: "transfer() adds money to the receiver, then takes it from the sender, inside one transaction.atomic() block. The debit breaks a CheckConstraint. What is saved?",
              opts: ["A) Neither balance changes: the whole block is rolled back", "B) The receiver keeps the credit; only the debit fails", "C) Both updates are saved, and Django only logs a warning"], ans: "A" },
      9  => { type: "multiple_choice", q: "Which ModelAdmin option adds a search box that searches the post title?",
              opts: ["A) list_filter = [\"title\"]", "B) search_fields = [\"title\"]", "C) list_display = [\"title\"]"], ans: "B" },
      10 => { type: "true_false",      q: "form.save(commit=False) returns an object that is not saved yet. You can set fields like author before you call save().",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "A ListView has model = Post (app \"blog\") and no template_name. Which template does it use?",
              opts: ["A) blog/post_list.html", "B) post/list.html", "C) blog/list_post.html"], ans: "A" },
      12 => { type: "multiple_choice", q: "Why does a DeleteView class use success_url = reverse_lazy(\"task-list\") and not reverse()?",
              opts: ["A) reverse_lazy() is faster and caches every URL it builds", "B) The URLconf may not be loaded yet when the class is defined", "C) reverse_lazy() adds a ?next= parameter by itself"], ans: "B" },
      13 => { type: "multiple_choice", q: "A visitor who is not logged in opens a view protected by LoginRequiredMixin. What response do they get?",
              opts: ["A) 403 Forbidden, because the visitor has no permissions", "B) 404 Not Found, so the page stays hidden", "C) A 302 redirect to the login page"], ans: "C" },
      14 => { type: "true_false",      q: "You add a message with messages.success() before a redirect. It shows once on the next page and is then removed.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "true_false",      q: "You set up user-uploaded files, like profile photos, with STATIC_ROOT and STATICFILES_DIRS.",
              opts: ["True", "False"], ans: "False" },
      16 => { type: "multiple_choice", q: "MIDDLEWARE = [\"app.First\", \"app.Second\"]. On the way back out, which middleware gets the response first?",
              opts: ["A) First, because it is at the top of the list", "B) Second (responses go back in reverse order)", "C) Both of them run at the same time, in parallel"], ans: "B" },
      17 => { type: "multiple_choice", q: "Your test creates Post objects and then asks for a page. Which base class should the test use?",
              opts: ["A) SimpleTestCase, because it is the fastest option", "B) LiveServerTestCase, because the test makes HTTP requests", "C) TestCase"], ans: "C" },
      18 => { type: "multiple_choice", q: "In Django REST Framework, what turns model objects into JSON-friendly data and checks incoming data?",
              opts: ["A) A Router", "B) A Serializer", "C) A permission class"], ans: "B" },
      19 => { type: "true_false",      q: "A loop over posts reads post.author.name. Adding select_related(\"author\") to the QuerySet changes 1 + N queries into 1 query.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "You deploy with DEBUG=False, and every page returns \"Bad Request (400)\". What is the most likely cause?",
              opts: ["A) The domain is missing from ALLOWED_HOSTS", "B) collectstatic was not run", "C) The SECRET_KEY is shorter than 50 characters"], ans: "A" },
      21 => { type: "multiple_choice", q: "In the capstone, why does CommentForm use fields = [\"text\"] only?",
              opts: ["A) Because a ModelForm can have only one field", "B) Because smaller forms show faster in the browser", "C) So users cannot set the post or author themselves"], ans: "C" }
    }

    DjangoContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)
      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
        starter_code: data[:starter_code]
      )

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

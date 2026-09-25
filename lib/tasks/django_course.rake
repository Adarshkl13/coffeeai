require_relative "../django_content"

namespace :content do
  desc "Create Django course and populate all 21 lessons"
  task django: :environment do
    course = Course.find_or_create_by!(slug: "django") do |c|
      c.title       = "Django"
      c.description = "Django is Python's batteries-included web framework. Learn URLs, views, templates, the ORM, migrations, forms, class-based views, authentication, testing, APIs and deployment with real Django 6.1 code."
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
      1  => "See how a request becomes a response in Django, and run your first real views and URLs.",
      2  => "Understand projects, apps and settings.py, and keep secrets in environment variables.",
      3  => "Map URLs to views with path converters and named routes, and return HTML, JSON, redirects and 404s.",
      4  => "Build pages with variables, filters, tags, custom filters and template inheritance, and learn how auto-escaping blocks XSS.",
      5  => "Describe database tables as model classes with fields and relationships, and save, read, update and delete rows.",
      6  => "Use makemigrations and migrate to change your database safely, including data migrations with RunPython and custom management commands.",
      7  => "Query data with filter, exclude, lookups, Q and F objects, aggregates and annotations, and understand lazy QuerySets.",
      8  => "Keep rules next to your data with custom QuerySets, model methods, clean(), database constraints and transaction.atomic().",
      9  => "Register models in the admin site and customise list columns, filters, search and actions.",
      10 => "Validate user input with Form and ModelForm, write clean methods, and protect forms with CSRF tokens.",
      11 => "Replace repetitive view code with TemplateView, ListView and DetailView, including pagination.",
      12 => "Build create, update and delete pages with CreateView, UpdateView and DeleteView.",
      13 => "Log users in, protect views, use groups and permissions, and set up a custom user model.",
      14 => "Remember visitors with sessions and cookies, and show one-time notices with the messages framework.",
      15 => "Serve CSS and JavaScript with collectstatic and the STORAGES setting, and handle user uploads as media files.",
      16 => "Write middleware that wraps every request, and react to events such as post_save with signals.",
      17 => "Write fast, isolated tests with TestCase, the test Client and Django's assertions.",
      18 => "Build a JSON API in plain Django and learn how Django REST Framework's serializers, viewsets and routers do it for you.",
      19 => "Find and fix N+1 queries with select_related and prefetch_related, then add caching and background tasks where they help.",
      20 => "Prepare a Django site for production with check --deploy, security settings, Gunicorn or Uvicorn, and a release checklist.",
      21 => "Combine models, forms, views, templates, login and messages into a working mini blog, then extend it."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "urls.py contains path(\"hello/<str:name>/\", hello). How does Django call the view for GET /hello/Priya/?",
              opts: ["A) hello(request), with \"Priya\" available in request.GET", "B) hello(request, name=\"Priya\")", "C) hello(\"Priya\"), without a request object"], ans: "B" },
      2  => { type: "true_false",      q: "DEBUG = os.environ.get(\"DJANGO_DEBUG\", \"False\") makes DEBUG behave as false when the variable is not set.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "The only URL pattern is path(\"posts/<int:pk>/\", post_detail). What happens for a request to /posts/abc/?",
              opts: ["A) A 404 Not Found response", "B) post_detail runs with pk set to the string \"abc\"", "C) A 500 error when the view calls int(\"abc\")"], ans: "A" },
      4  => { type: "multiple_choice", q: "A template contains {{ comment }} and the view passes comment = \"<b>Hi</b>\". What does the browser show?",
              opts: ["A) The word Hi in bold", "B) Nothing, because HTML in variables is removed", "C) The text <b>Hi</b>, because Django escapes it"], ans: "C" },
      5  => { type: "multiple_choice", q: "Which is the recommended way to link a Post to the user who wrote it?",
              opts: ["A) models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)", "B) models.ForeignKey(\"auth.User\", on_delete=models.CASCADE)", "C) models.CharField(max_length=150) holding the username"], ans: "A" },
      6  => { type: "true_false",      q: "Running python manage.py makemigrations immediately changes the tables in your database.",
              opts: ["True", "False"], ans: "False" },
      7  => { type: "multiple_choice", q: "qs = Post.objects.filter(published=True) is followed by qs = qs.filter(views__gte=100). When does SQL run?",
              opts: ["A) Twice, once after each of the two lines", "B) Once, right after the first line", "C) Not yet: only when the QuerySet is evaluated"], ans: "C" },
      8  => { type: "multiple_choice", q: "transfer() credits the receiver, then debits the sender, inside one transaction.atomic() block. The debit breaks a CheckConstraint. What is saved?",
              opts: ["A) Neither balance changes: the whole block is rolled back", "B) The receiver keeps the credit; only the debit fails", "C) Both updates are saved, and Django only logs a warning"], ans: "A" },
      9  => { type: "multiple_choice", q: "Which ModelAdmin option adds a search box that looks for text in the post title?",
              opts: ["A) list_filter = [\"title\"]", "B) search_fields = [\"title\"]", "C) list_display = [\"title\"]"], ans: "B" },
      10 => { type: "true_false",      q: "form.save(commit=False) returns an unsaved object, so you can set fields such as author before calling save().",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "A ListView has model = Post (app \"blog\") and no template_name. Which template does it render?",
              opts: ["A) blog/post_list.html", "B) post/list.html", "C) blog/list_post.html"], ans: "A" },
      12 => { type: "multiple_choice", q: "Why is success_url = reverse_lazy(\"task-list\") used in a DeleteView class instead of reverse()?",
              opts: ["A) reverse_lazy() is faster and caches every URL it builds", "B) The URLconf may not be loaded yet when the class is defined", "C) reverse_lazy() automatically adds a ?next= parameter"], ans: "B" },
      13 => { type: "multiple_choice", q: "A logged-out visitor opens a view protected by LoginRequiredMixin. What response do they get?",
              opts: ["A) 403 Forbidden, because the visitor has no permissions", "B) 404 Not Found, so the page stays hidden", "C) A 302 redirect to the login page"], ans: "C" },
      14 => { type: "true_false",      q: "A message added with messages.success() before a redirect is shown once on the next page and then removed.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "true_false",      q: "User-uploaded files such as profile photos are configured with STATIC_ROOT and STATICFILES_DIRS.",
              opts: ["True", "False"], ans: "False" },
      16 => { type: "multiple_choice", q: "MIDDLEWARE = [\"app.First\", \"app.Second\"]. On the way back out, which middleware sees the response first?",
              opts: ["A) First, because it is at the top of the list", "B) Second (responses pass back in reverse order)", "C) Both of them run at the same time, in parallel"], ans: "B" },
      17 => { type: "multiple_choice", q: "Your test creates Post objects and then requests a page. Which base class should the test use?",
              opts: ["A) SimpleTestCase, because it is the fastest option", "B) LiveServerTestCase, because the test makes HTTP requests", "C) TestCase"], ans: "C" },
      18 => { type: "multiple_choice", q: "In Django REST Framework, what converts model objects to JSON-friendly data and validates incoming data?",
              opts: ["A) A Router", "B) A Serializer", "C) A permission class"], ans: "B" },
      19 => { type: "true_false",      q: "A loop over posts reads post.author.name. Adding select_related(\"author\") to the QuerySet turns 1 + N queries into 1 query.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "After deploying with DEBUG=False, every page returns \"Bad Request (400)\". What is the most likely cause?",
              opts: ["A) The domain is missing from ALLOWED_HOSTS", "B) collectstatic was not run", "C) The SECRET_KEY is shorter than 50 characters"], ans: "A" },
      21 => { type: "multiple_choice", q: "In the capstone, why does CommentForm use fields = [\"text\"] only?",
              opts: ["A) Because a ModelForm is allowed to contain only one field", "B) Because smaller forms render faster in the browser", "C) So users cannot set the post or author themselves"], ans: "C" }
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

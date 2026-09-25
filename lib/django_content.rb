module DjangoContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Introduction to Django</h1>
        </div>
        <p class="lc-lead">Django is Python's "batteries-included" web framework. It gives you a database layer, an admin site, user login, forms, templates and strong security defaults in one package, so you can build a real website quickly. Instagram, Pinterest and Mozilla sites have used Django in production.</p>
        <div class="lc-card">
          <h3>What a Web Framework Does</h3>
          <p>Every website does the same job again and again: a browser sends an <strong>HTTP request</strong> (for example <code>GET /hello/Priya/</code>) and the server sends back an <strong>HTTP response</strong> (a status code like <code>200</code> plus some HTML or JSON). Django handles the repeated work so you only write the part that is special to your site.</p>
          <ol class="lc-list">
            <li>The browser sends a request to a URL.</li>
            <li>Django's <strong>URL dispatcher</strong> finds the matching pattern in <code>urls.py</code>.</li>
            <li>Django calls the <strong>view</strong> function for that pattern with a <code>request</code> object.</li>
            <li>The view may read or save data using <strong>models</strong>, and may fill in a <strong>template</strong>.</li>
            <li>The view returns an <code>HttpResponse</code>, and Django sends it back to the browser.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>MVT: Model, View, Template</h3>
          <p>Django splits an app into three main parts. (It is like MVC, but Django's "view" plays the controller role and the "template" is the display.)</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Job</th><th>Usual file</th></tr></thead>
            <tbody>
              <tr><td>Model</td><td>Describes your data and talks to the database</td><td><code>models.py</code></td></tr>
              <tr><td>View</td><td>Receives a request, does the logic, returns a response</td><td><code>views.py</code></td></tr>
              <tr><td>Template</td><td>HTML with placeholders that the view fills in</td><td><code>templates/*.html</code></td></tr>
              <tr><td>URLconf</td><td>Maps URL paths to views</td><td><code>urls.py</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Starting a Real Project on Your Computer</h3>
          <p>This course teaches <strong>Django 6.1</strong>, the current release (September 2026). Django 6.x needs <strong>Python 3.12 or newer</strong>. Many companies use <strong>Django 5.2 LTS</strong> (long-term support, security fixes until April 2028). Almost everything in this course works the same on 5.2.</p>
        <div class="lc-code">python -m venv .venv              # create a virtual environment<br>source .venv/bin/activate         # Windows: .venv\Scripts\activate<br>pip install "django==6.1.*"<br>django-admin startproject mysite .<br>python manage.py startapp blog<br>python manage.py runserver        # open http://127.0.0.1:8000/</div>
        </div>
        <div class="lc-card">
          <h3>How Django Runs in This Editor</h3>
          <p>A normal project keeps settings in <code>settings.py</code> and URLs in <code>urls.py</code>. The editor has only one file, so each starter uses Django's built-in way to run from a single script:</p>
          <ul class="lc-list">
            <li><code>settings.configure(...)</code> sets the settings in code (instead of <code>settings.py</code>).</li>
            <li><code>django.setup()</code> loads Django and the installed apps. Call it before importing models or views.</li>
            <li><code>ROOT_URLCONF=__name__</code> tells Django "the <code>urlpatterns</code> list is in this file".</li>
            <li><code>django.test.Client</code> is a pretend browser: <code>client.get("/")</code> sends a request to your app without starting a server.</li>
          </ul>
          <p>This is real Django 6.1, not a simulation. The same views and URL patterns would work in a full project.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Your First Views</h3>
        <div class="lc-code">from django.http import HttpResponse<br>from django.urls import path<br>from django.test import Client<br><br>def home(request):<br>&nbsp;&nbsp;&nbsp;&nbsp;return HttpResponse("Welcome to my first Django site!")<br><br>def hello(request, name):<br>&nbsp;&nbsp;&nbsp;&nbsp;return HttpResponse(f"Namaste, {name}!")<br><br>urlpatterns = [<br>&nbsp;&nbsp;&nbsp;&nbsp;path("", home),<br>&nbsp;&nbsp;&nbsp;&nbsp;path("hello/&lt;str:name&gt;/", hello),<br>]<br><br>client = Client()<br>for url in ["/", "/hello/Priya/", "/missing/"]:<br>&nbsp;&nbsp;&nbsp;&nbsp;response = client.get(url)<br>&nbsp;&nbsp;&nbsp;&nbsp;print(url, response.status_code)</div>
          <p><strong>Output:</strong></p>
        <div class="lc-code">/ 200<br>/hello/Priya/ 200<br>/missing/ 404</div>
          <p>The starter code does the same and prints a little more detail:</p>
        <div class="lc-code">Django version: 6.1<br>GET /              -&gt; 200  Welcome to my first Django site!<br>GET /hello/Priya/  -&gt; 200  Namaste, Priya!<br>GET /missing/      -&gt; 404  (Not Found page)<br><br>Content-Type: text/html; charset=utf-8<br>Response class: HttpResponse</div>
          <p>The part <code>&lt;str:name&gt;</code> captures text from the URL and passes it to the view as the <code>name</code> argument. A path with no matching pattern gets a <code>404 Not Found</code> response automatically.</p>
        </div>
        <div class="lc-card">
          <h3>Django vs Flask vs FastAPI</h3>
          <table class="lc-table">
            <thead><tr><th>Framework</th><th>Style</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Django</td><td>Batteries included: ORM, admin, auth, forms built in</td><td>Full websites, dashboards, content sites, APIs with DRF</td></tr>
              <tr><td>Flask</td><td>Micro-framework: small core, you add libraries</td><td>Small apps and custom stacks</td></tr>
              <tr><td>FastAPI</td><td>API-first, type hints, async</td><td>JSON APIs and ML model serving</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the trailing slash: <code>path("hello/&lt;str:name&gt;/", ...)</code> matches <code>/hello/Priya/</code>, not <code>/hello/Priya</code> (in a full project, <code>CommonMiddleware</code> redirects the version without the slash).</li>
            <li>Importing models or views <em>before</em> <code>django.setup()</code> in a standalone script. You get "Apps aren't loaded yet".</li>
            <li>A view that returns nothing. Every view must <code>return</code> an <code>HttpResponse</code> (or raise an error such as <code>Http404</code>).</li>
            <li>Installing Django globally instead of inside a virtual environment. Use one <code>.venv</code> per project.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter code, add a view <code>about(request)</code> that returns <code>"About: a Django learning site"</code>. Add <code>path("about/", about)</code> to <code>urlpatterns</code> and <code>"/about/"</code> to the list of URLs. Run it and check that you get status <code>200</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>manage.py</code> is your main tool in a real project: <code>runserver</code>, <code>startapp</code>, <code>makemigrations</code>, <code>migrate</code>, <code>createsuperuser</code>, <code>shell</code> and <code>test</code>. Run <code>python manage.py help</code> to see them all.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A complete Django app in one file: settings, a view, a URL and a request
        import django
        from django.conf import settings

        settings.configure(
            DEBUG=False,                    # False = short error pages (True shows debug pages)
            SECRET_KEY="lesson-only-not-secret",
            ROOT_URLCONF=__name__,          # our URL patterns live in this file
            ALLOWED_HOSTS=["testserver"],   # the host name the test Client uses
        )
        django.setup()                      # load Django with these settings

        from django.http import HttpResponse
        from django.urls import path
        from django.test import Client

        # Views: take a request, return a response
        def home(request):
            return HttpResponse("Welcome to my first Django site!")

        def hello(request, name):
            return HttpResponse(f"Namaste, {name}!")

        # URL patterns: which path runs which view (normally in urls.py)
        urlpatterns = [
            path("", home),
            path("hello/<str:name>/", hello),
        ]

        print("Django version:", django.get_version().rsplit(".", 1)[0])

        client = Client()   # a pretend browser that sends requests to our app
        for url in ["/", "/hello/Priya/", "/missing/"]:
            response = client.get(url)
            body = response.content.decode() if response.status_code == 200 else "(Not Found page)"
            print(f"GET {url:<14} -> {response.status_code}  {body}")

        response = client.get("/hello/Arjun/")
        print("\nContent-Type:", response["Content-Type"])
        print("Response class:", type(response).__name__)
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Project Structure and Settings</h1>
        </div>
        <p class="lc-lead">A Django <strong>project</strong> is your whole website. It is made of several <strong>apps</strong>, each doing one job (blog, accounts, payments). One file, <code>settings.py</code>, holds the configuration for all of them.</p>
        <div class="lc-card">
          <h3>Project vs App</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Project</th><th>App</th></tr></thead>
            <tbody>
              <tr><td>Created with</td><td><code>django-admin startproject mysite .</code></td><td><code>python manage.py startapp blog</code></td></tr>
              <tr><td>What it is</td><td>The whole site: settings, root URLs, server entry points</td><td>One feature: its models, views, templates, admin</td></tr>
              <tr><td>How many</td><td>One per website</td><td>Many; can be reused in other projects</td></tr>
              <tr><td>Examples</td><td><code>mysite</code>, <code>college_portal</code></td><td><code>blog</code>, <code>accounts</code>, <code>orders</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Files Django Creates</h3>
        <div class="lc-code">mysite/                  # project folder (from startproject ... .)<br>├── manage.py            # command-line tool for this project<br>├── mysite/<br>│   ├── __init__.py<br>│   ├── settings.py      # all configuration<br>│   ├── urls.py          # root URLconf<br>│   ├── asgi.py          # entry point for async servers (Uvicorn, Daphne)<br>│   └── wsgi.py          # entry point for WSGI servers (Gunicorn)<br>└── blog/                # an app (from startapp blog)<br>&nbsp;&nbsp;&nbsp;&nbsp;├── __init__.py<br>&nbsp;&nbsp;&nbsp;&nbsp;├── admin.py         # register models in the admin site<br>&nbsp;&nbsp;&nbsp;&nbsp;├── apps.py          # BlogConfig: the app's configuration class<br>&nbsp;&nbsp;&nbsp;&nbsp;├── migrations/      # database change files<br>&nbsp;&nbsp;&nbsp;&nbsp;├── models.py<br>&nbsp;&nbsp;&nbsp;&nbsp;├── tests.py<br>&nbsp;&nbsp;&nbsp;&nbsp;└── views.py</div>
          <p><code>startapp</code> does <strong>not</strong> create <code>blog/urls.py</code> or a <code>templates/</code> folder; you add those yourself. A new app does nothing until you add it to <code>INSTALLED_APPS</code>:</p>
        <div class="lc-code">INSTALLED_APPS = [<br>&nbsp;&nbsp;&nbsp;&nbsp;"django.contrib.admin",<br>&nbsp;&nbsp;&nbsp;&nbsp;"django.contrib.auth",<br>&nbsp;&nbsp;&nbsp;&nbsp;"django.contrib.contenttypes",<br>&nbsp;&nbsp;&nbsp;&nbsp;"django.contrib.sessions",<br>&nbsp;&nbsp;&nbsp;&nbsp;"django.contrib.messages",<br>&nbsp;&nbsp;&nbsp;&nbsp;"django.contrib.staticfiles",<br>&nbsp;&nbsp;&nbsp;&nbsp;"blog",                      # your app<br>]</div>
        </div>
        <div class="lc-card">
          <h3>Key Settings</h3>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>What it controls</th><th>Typical value</th></tr></thead>
            <tbody>
              <tr><td><code>SECRET_KEY</code></td><td>Signs sessions, cookies and password-reset links</td><td>Long random string from an environment variable</td></tr>
              <tr><td><code>DEBUG</code></td><td>Detailed error pages</td><td><code>True</code> on your laptop, <code>False</code> in production</td></tr>
              <tr><td><code>ALLOWED_HOSTS</code></td><td>Domain names the site may serve</td><td><code>["example.com"]</code></td></tr>
              <tr><td><code>INSTALLED_APPS</code></td><td>Which apps are active</td><td>Built-in <code>django.contrib</code> apps + yours</td></tr>
              <tr><td><code>DATABASES</code></td><td>Database connection</td><td>SQLite for learning, PostgreSQL in production</td></tr>
              <tr><td><code>MIDDLEWARE</code></td><td>Code that runs on every request (lesson 15)</td><td>Security, sessions, CSRF, auth, messages</td></tr>
              <tr><td><code>TEMPLATES</code></td><td>Where HTML templates are found (lesson 4)</td><td><code>"DIRS": [BASE_DIR / "templates"]</code></td></tr>
              <tr><td><code>TIME_ZONE</code>, <code>USE_TZ</code></td><td>Time zone handling</td><td><code>"Asia/Kolkata"</code>, <code>True</code></td></tr>
              <tr><td><code>DEFAULT_AUTO_FIELD</code></td><td>Type of automatic <code>id</code> columns</td><td><code>"django.db.models.BigAutoField"</code></td></tr>
            </tbody>
          </table>
          <p>Any setting you leave out gets Django's default value. For example, <code>LANGUAGE_CODE</code> defaults to <code>"en-us"</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Reading Settings in Your Code</h3>
          <p>Always import the settings object, never your settings file. It works no matter which settings file is active, and it includes the defaults.</p>
        <div class="lc-code">from django.conf import settings     # correct<br># from mysite import settings        # wrong: misses defaults and other settings files<br><br>if settings.DEBUG:<br>&nbsp;&nbsp;&nbsp;&nbsp;print("Development mode")</div>
          <p>Django finds the settings file through the <code>DJANGO_SETTINGS_MODULE</code> environment variable (for example <code>mysite.settings</code>). <code>manage.py</code>, <code>wsgi.py</code> and <code>asgi.py</code> set it for you. In the editor we call <code>settings.configure()</code> instead.</p>
        </div>
        <div class="lc-card">
          <h3>Keeping Secrets Out of Git</h3>
          <p>Read secrets and per-server values from environment variables. Remember that environment variables are always <strong>strings</strong>:</p>
        <div class="lc-code">import os<br>SECRET_KEY = os.environ["DJANGO_SECRET_KEY"]                 # crash early if missing<br>DEBUG = os.environ.get("DJANGO_DEBUG", "False") == "True"    # "False" is a non-empty string!<br>ALLOWED_HOSTS = os.environ.get("DJANGO_ALLOWED_HOSTS", "").split(",")</div>
          <p>Libraries such as <code>django-environ</code> or <code>python-decouple</code> can read a local <code>.env</code> file for you. Add <code>.env</code> to <code>.gitignore</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Inspect Settings</h3>
          <p>The starter configures settings from environment variables, prints them, lists the installed apps and runs the system check:</p>
        <div class="lc-code">DEBUG: True bool<br>ALLOWED_HOSTS: ['localhost', '127.0.0.1']<br>Database engine: django.db.backends.sqlite3<br>Would-be db file: /home/priya/mysite/db.sqlite3<br>Time zone: Asia/Kolkata<br>LANGUAGE_CODE (default): en-us<br>SESSION_COOKIE_AGE (default): 1209600 seconds<br><br>Installed apps (label -&gt; name):<br>&nbsp;&nbsp;contenttypes  django.contrib.contenttypes<br>&nbsp;&nbsp;auth          django.contrib.auth<br>&nbsp;&nbsp;sessions      django.contrib.sessions<br><br>Running the system check framework:<br>System check identified no issues (0 silenced).</div>
          <p><code>call_command("check")</code> is the same as running <code>python manage.py check</code>. It looks for common configuration mistakes.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>DEBUG = os.environ.get("DJANGO_DEBUG", False)</code>. The value <code>"False"</code> is a non-empty string, so it counts as true. Compare with <code>== "True"</code>.</li>
            <li>Committing <code>SECRET_KEY</code> or database passwords to GitHub.</li>
            <li>Creating an app but forgetting to add it to <code>INSTALLED_APPS</code>, so its models and templates are ignored.</li>
            <li>Naming an app the same as a Python module (<code>test</code>, <code>email</code>, <code>django</code>). Choose a plain unique name like <code>blog</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, change <code>os.environ.setdefault("DJANGO_DEBUG", "True")</code> to <code>"False"</code> and run again. What does <code>DEBUG</code> print now? Then add <code>LANGUAGE_CODE="en-in"</code> to <code>settings.configure(...)</code> and check that the printed value changes.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Run <code>python manage.py diffsettings</code> in a real project to see every setting that differs from Django's defaults. It is a quick way to understand someone else's project.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Settings: the configuration of a Django project (normally mysite/settings.py)
        import os
        from pathlib import Path
        import django
        from django.conf import settings

        BASE_DIR = Path("/home/priya/mysite")        # in settings.py: Path(__file__).resolve().parent.parent

        # Pretend these values came from the server's environment variables
        os.environ.setdefault("DJANGO_SECRET_KEY", "k8#p2-from-an-env-var-not-from-git")
        os.environ.setdefault("DJANGO_DEBUG", "True")

        settings.configure(
            SECRET_KEY=os.environ["DJANGO_SECRET_KEY"],
            DEBUG=os.environ["DJANGO_DEBUG"] == "True",   # env vars are strings!
            ALLOWED_HOSTS=["localhost", "127.0.0.1"],
            INSTALLED_APPS=[
                "django.contrib.contenttypes",
                "django.contrib.auth",
                "django.contrib.sessions",
            ],
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
            TIME_ZONE="Asia/Kolkata",
            USE_TZ=True,
            STATIC_URL="static/",
            DEFAULT_AUTO_FIELD="django.db.models.BigAutoField",
        )
        django.setup()

        from django.apps import apps
        from django.core.management import call_command

        print("DEBUG:", settings.DEBUG, type(settings.DEBUG).__name__)
        print("ALLOWED_HOSTS:", settings.ALLOWED_HOSTS)
        print("Database engine:", settings.DATABASES["default"]["ENGINE"])
        print("Would-be db file:", BASE_DIR / "db.sqlite3")
        print("Time zone:", settings.TIME_ZONE)

        # Settings you did NOT set still exist: Django fills in defaults
        print("LANGUAGE_CODE (default):", settings.LANGUAGE_CODE)
        print("SESSION_COOKIE_AGE (default):", settings.SESSION_COOKIE_AGE, "seconds")

        print("\nInstalled apps (label -> name):")
        for app in apps.get_app_configs():
            print(f"  {app.label:<13} {app.name}")

        print("\nRunning the system check framework:")
        call_command("check")
      PYTHON
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">URLs and Views</h1>
        </div>
        <p class="lc-lead">The <strong>URLconf</strong> decides which code runs for each address, and a <strong>view</strong> is that code: a function that receives an <code>HttpRequest</code> and returns an <code>HttpResponse</code>. Together they are the front door of every Django app.</p>
        <div class="lc-card">
          <h3>URL Patterns with path()</h3>
          <p>Django checks <code>urlpatterns</code> from top to bottom and uses the <strong>first</strong> pattern that matches. Angle brackets capture part of the URL and pass it to the view as a keyword argument.</p>
        <div class="lc-code"># blog/urls.py<br>from django.urls import path<br>from . import views<br><br>app_name = "blog"                      # namespace: use "blog:post-detail"<br>urlpatterns = [<br>&nbsp;&nbsp;&nbsp;&nbsp;path("", views.post_list, name="post-list"),<br>&nbsp;&nbsp;&nbsp;&nbsp;path("posts/&lt;int:pk&gt;/", views.post_detail, name="post-detail"),<br>&nbsp;&nbsp;&nbsp;&nbsp;path("tags/&lt;slug:tag&gt;/", views.posts_by_tag, name="posts-by-tag"),<br>]<br><br># mysite/urls.py (the root URLconf)<br>from django.contrib import admin<br>from django.urls import include, path<br><br>urlpatterns = [<br>&nbsp;&nbsp;&nbsp;&nbsp;path("admin/", admin.site.urls),<br>&nbsp;&nbsp;&nbsp;&nbsp;path("blog/", include("blog.urls")),   # /blog/posts/5/ -&gt; post_detail(pk=5)<br>]</div>
        </div>
        <div class="lc-card">
          <h3>Path Converters</h3>
          <table class="lc-table">
            <thead><tr><th>Converter</th><th>Matches</th><th>Example URL</th><th>View receives</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;int:pk&gt;</code></td><td>0 or a positive whole number</td><td><code>/posts/42/</code></td><td><code>pk=42</code> (an <code>int</code>)</td></tr>
              <tr><td><code>&lt;str:name&gt;</code></td><td>Any text except <code>/</code> (the default)</td><td><code>/hello/Priya/</code></td><td><code>name="Priya"</code></td></tr>
              <tr><td><code>&lt;slug:slug&gt;</code></td><td>Letters, numbers, <code>-</code> and <code>_</code></td><td><code>/tags/web-dev/</code></td><td><code>slug="web-dev"</code></td></tr>
              <tr><td><code>&lt;uuid:id&gt;</code></td><td>A UUID</td><td><code>/orders/075194d3-.../</code></td><td>a <code>uuid.UUID</code></td></tr>
              <tr><td><code>&lt;path:file&gt;</code></td><td>Any text, including <code>/</code></td><td><code>/files/docs/a.pdf</code></td><td><code>file="docs/a.pdf"</code></td></tr>
            </tbody>
          </table>
          <p>If the text does not fit the converter (for example <code>/posts/abc/</code> for <code>int</code>), the pattern does not match and the user gets a 404.</p>
        </div>
        <div class="lc-card">
          <h3>Name Your URLs and Use reverse()</h3>
          <p>Never hard-code URLs like <code>"/blog/posts/5/"</code> in views or templates. Give each pattern a <code>name</code> and let Django build the URL. If you later change the path, every link still works.</p>
        <div class="lc-code">from django.urls import reverse<br>reverse("blog:post-detail", args=[5])          # '/blog/posts/5/'<br>reverse("blog:post-detail", kwargs={"pk": 5})  # same<br># In a template: {% url 'blog:post-detail' post.pk %}</div>
        </div>
        <div class="lc-card">
          <h3>The Request and the Response</h3>
          <table class="lc-table">
            <thead><tr><th>You need</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>HTTP method</td><td><code>request.method</code> (<code>"GET"</code>, <code>"POST"</code>, ...)</td></tr>
              <tr><td>Query string <code>?q=django</code></td><td><code>request.GET.get("q", "")</code></td></tr>
              <tr><td>Submitted form data</td><td><code>request.POST</code> (lesson 9)</td></tr>
              <tr><td>Logged-in user</td><td><code>request.user</code> (lesson 12)</td></tr>
              <tr><td>Plain text / HTML</td><td><code>HttpResponse("...", status=200)</code></td></tr>
              <tr><td>Rendered template</td><td><code>render(request, "blog/list.html", context)</code> (lesson 4)</td></tr>
              <tr><td>JSON</td><td><code>JsonResponse({"ok": True})</code></td></tr>
              <tr><td>Go to another page</td><td><code>redirect("blog:post-list")</code> (status 302)</td></tr>
              <tr><td>Not found</td><td><code>raise Http404("...")</code> or <code>get_object_or_404(Model, pk=pk)</code></td></tr>
            </tbody>
          </table>
          <p>Decorators such as <code>@require_GET</code>, <code>@require_POST</code> and <code>@require_http_methods(["GET", "POST"])</code> reject other methods with <code>405 Method Not Allowed</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Small Course Site</h3>
        <div class="lc-code">def course_detail(request, pk):<br>&nbsp;&nbsp;&nbsp;&nbsp;if pk not in COURSES:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raise Http404("No such course")<br>&nbsp;&nbsp;&nbsp;&nbsp;return JsonResponse({"id": pk, "title": COURSES[pk]})<br><br>def old_courses(request):<br>&nbsp;&nbsp;&nbsp;&nbsp;return redirect("course-list")<br><br>@require_POST<br>def enrol(request, pk):<br>&nbsp;&nbsp;&nbsp;&nbsp;return HttpResponse(f"Enrolled in course {pk}", status=201)</div>
          <p><strong>Output</strong> of the starter code:</p>
        <div class="lc-code">reverse('course-detail', args=[2]) -&gt; /courses/2/<br>GET  /courses/?level=beginner   200 2 courses (level=beginner)<br>GET  /courses/2/                200 {"id": 2, "title": "Django for Beginners"}<br>GET  /courses/9/                404<br>GET  /courses/abc/              404<br>GET  /old-courses/              302 /courses/<br>GET  /courses/1/enrol/          405<br>POST /courses/1/enrol/          201 Enrolled in course 1</div>
          <p>Notice the two different 404s: <code>/courses/9/</code> matched the pattern but the view raised <code>Http404</code>; <code>/courses/abc/</code> never matched <code>&lt;int:pk&gt;</code> at all.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting a general pattern above a specific one. <code>path("posts/&lt;str:slug&gt;/", ...)</code> above <code>path("posts/new/", ...)</code> means <code>/posts/new/</code> never reaches the second view.</li>
            <li>Forgetting the view's parameter: a pattern with <code>&lt;int:pk&gt;</code> needs <code>def view(request, pk)</code>, or you get a <code>TypeError</code>.</li>
            <li>Calling the view in the URLconf: write <code>path("", views.home)</code>, not <code>views.home()</code>.</li>
            <li>Hard-coding URLs instead of using <code>name=</code> with <code>reverse()</code> or <code>{% url %}</code>.</li>
            <li>Changing data on a GET request. Use POST for anything that creates, updates or deletes.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a view <code>search(request)</code> that reads <code>request.GET.get("q", "")</code> and returns <code>JsonResponse</code> with the course titles that contain <code>q</code> (ignore case). Map it to <code>path("search/", search, name="search")</code> and request <code>/search/?q=django</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>redirect()</code> after a successful POST (the "Post/Redirect/Get" pattern). Then refreshing the page does not submit the form a second time.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.conf import settings

        settings.configure(DEBUG=False, SECRET_KEY="lesson-only", ROOT_URLCONF=__name__,
                           ALLOWED_HOSTS=["testserver"])
        django.setup()

        from django.http import HttpResponse, JsonResponse, Http404
        from django.shortcuts import redirect
        from django.urls import path, reverse
        from django.views.decorators.http import require_POST
        from django.test import Client

        COURSES = {1: "Python Basics", 2: "Django for Beginners"}   # stand-in for a database

        def course_list(request):
            level = request.GET.get("level", "all")                 # query string: ?level=...
            return HttpResponse(f"{len(COURSES)} courses (level={level})")

        def course_detail(request, pk):                              # pk arrives as an int
            if pk not in COURSES:
                raise Http404("No such course")
            return JsonResponse({"id": pk, "title": COURSES[pk]})

        def old_courses(request):
            return redirect("course-list")                           # redirect by URL name

        @require_POST                                                # only POST allowed
        def enrol(request, pk):
            return HttpResponse(f"Enrolled in course {pk}", status=201)

        urlpatterns = [
            path("courses/", course_list, name="course-list"),
            path("courses/<int:pk>/", course_detail, name="course-detail"),
            path("courses/<int:pk>/enrol/", enrol, name="course-enrol"),
            path("old-courses/", old_courses),
        ]

        print("reverse('course-detail', args=[2]) ->", reverse("course-detail", args=[2]))
        c = Client()
        checks = [
            ("GET", "/courses/?level=beginner"), ("GET", "/courses/2/"), ("GET", "/courses/9/"),
            ("GET", "/courses/abc/"), ("GET", "/old-courses/"), ("GET", "/courses/1/enrol/"),
            ("POST", "/courses/1/enrol/"),
        ]
        for method, url in checks:
            r = c.get(url) if method == "GET" else c.post(url)
            extra = r.get("Location", "") or (r.content.decode() if r.status_code < 400 else "")
            print(f"{method:<4} {url:<26} {r.status_code} {extra}")
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Templates and the Template Language</h1>
        </div>
        <p class="lc-lead">Views should not build HTML with string concatenation. Django <strong>templates</strong> are HTML files with placeholders. The view passes a <strong>context</strong> (a dictionary), and the template language fills in variables, loops and conditions. Output is HTML-escaped by default, which protects you from XSS attacks.</p>
        <div class="lc-card">
          <h3>The Three Building Blocks</h3>
          <table class="lc-table">
            <thead><tr><th>Syntax</th><th>Name</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>{{ ... }}</code></td><td>Variable (prints a value)</td><td><code>{{ post.title }}</code>, <code>{{ user.username }}</code></td></tr>
              <tr><td><code>{{ x|filter }}</code></td><td>Filter (changes a value)</td><td><code>{{ name|title }}</code>, <code>{{ body|truncatewords:30 }}</code></td></tr>
              <tr><td><code>{% ... %}</code></td><td>Tag (logic)</td><td><code>{% for %}</code>, <code>{% if %}</code>, <code>{% url %}</code>, <code>{% extends %}</code></td></tr>
              <tr><td><code>{# ... #}</code></td><td>Comment</td><td><code>{# not shown in the page #}</code></td></tr>
            </tbody>
          </table>
          <p>The dot looks up dictionary keys, attributes and list indexes: <code>{{ course.title }}</code> works whether <code>course</code> is a dict or a model object. Methods are called without brackets: <code>{{ post.comments.count }}</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Useful Filters and Tags</h3>
          <table class="lc-table">
            <thead><tr><th>Write</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>{{ "priya sharma"|title }}</code></td><td><code>Priya Sharma</code></td></tr>
              <tr><td><code>{{ items|length }}</code></td><td>Number of items</td></tr>
              <tr><td><code>{{ bio|default:"(none)" }}</code></td><td><code>(none)</code> if <code>bio</code> is empty</td></tr>
              <tr><td><code>message{{ n|pluralize }}</code></td><td><code>message</code> or <code>messages</code></td></tr>
              <tr><td><code>{{ post.created|date:"d M Y" }}</code></td><td><code>05 Sep 2026</code></td></tr>
              <tr><td><code>{% for x in list %}...{% empty %}...{% endfor %}</code></td><td>Loop, with a fallback for an empty list</td></tr>
              <tr><td><code>{{ forloop.counter }}</code></td><td>1, 2, 3 ... inside a loop</td></tr>
              <tr><td><code>{% url 'blog:post-detail' post.pk %}</code></td><td><code>/blog/posts/5/</code></td></tr>
              <tr><td><code>{% include "partials/card.html" %}</code></td><td>Inserts another template</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Template Inheritance</h3>
          <p>Put the shared page layout in <code>base.html</code> with named <code>{% block %}</code>s. Child templates <code>{% extends %}</code> it and fill only the blocks they need. <code>{% extends %}</code> must be the first tag in the child.</p>
        <div class="lc-code">{# templates/base.html #}<br>&lt;!DOCTYPE html&gt;<br>&lt;html&gt;<br>&lt;head&gt;&lt;title&gt;{% block title %}My Site{% endblock %}&lt;/title&gt;&lt;/head&gt;<br>&lt;body&gt;<br>&nbsp;&nbsp;&lt;nav&gt;&lt;a href="{% url 'blog:post-list' %}"&gt;Blog&lt;/a&gt;&lt;/nav&gt;<br>&nbsp;&nbsp;{% block content %}{% endblock %}<br>&lt;/body&gt;<br>&lt;/html&gt;<br><br>{# blog/templates/blog/post_list.html #}<br>{% extends "base.html" %}<br>{% block title %}Posts{% endblock %}<br>{% block content %}<br>&nbsp;&nbsp;{% for post in posts %}<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;h2&gt;&lt;a href="{% url 'blog:post-detail' post.pk %}"&gt;{{ post.title }}&lt;/a&gt;&lt;/h2&gt;<br>&nbsp;&nbsp;{% empty %}<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;No posts yet.&lt;/p&gt;<br>&nbsp;&nbsp;{% endfor %}<br>{% endblock %}</div>
        </div>
        <div class="lc-card">
          <h3>Rendering from a View</h3>
        <div class="lc-code">from django.shortcuts import render<br><br>def post_list(request):<br>&nbsp;&nbsp;&nbsp;&nbsp;posts = Post.objects.order_by("-created")<br>&nbsp;&nbsp;&nbsp;&nbsp;return render(request, "blog/post_list.html", {"posts": posts})</div>
          <p><code>render()</code> loads the template, fills it with the context and returns an <code>HttpResponse</code>. Where does Django look for <code>"blog/post_list.html"</code>? In the folders listed in <code>TEMPLATES["DIRS"]</code>, and (with <code>"APP_DIRS": True</code>) in every installed app's <code>templates/</code> folder. That is why app templates live in <code>blog/templates/blog/</code>: the extra <code>blog/</code> folder stops two apps' <code>list.html</code> files from clashing.</p>
          <p>In the editor there are no files, so the starter uses Django's <code>locmem</code> loader, which reads templates from a dictionary. The template code is exactly the same.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">Hi Priya Sharma! You have 3 messages. Bio: (none)<br>Comment: &amp;lt;script&amp;gt;alert(1)&amp;lt;/script&amp;gt; | Unsafe: &lt;script&gt;alert(1)&lt;/script&gt;<br><br>--- courses/list.html ---<br>&lt;title&gt;Courses (2)&lt;/title&gt;<br>&lt;main&gt;<br>&nbsp;&nbsp;1. PYTHON BASICS - Rs 0 [FREE]<br>&nbsp;&nbsp;2. DJANGO WEB APPS - Rs 1499<br>&lt;/main&gt;</div>
          <p>Look at the second line. By default Django turned <code>&lt;script&gt;</code> into harmless text (<code>&amp;lt;script&amp;gt;</code>). The <code>|safe</code> filter switched escaping off, so a real browser would run that script. Only use <code>|safe</code> on HTML you created yourself, never on user input.</p>
        </div>
        <div class="lc-card">
          <h3>Keep Logic in the View</h3>
          <p>The template language is deliberately limited: you cannot call functions with arguments or run arbitrary Python. Do calculations and database queries in the view (or model methods), then pass ready-made values to the template. If you need a reusable formatting rule, write a <strong>custom filter</strong> in <code>blog/templatetags/blog_extras.py</code> and load it with <code>{% load blog_extras %}</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using brackets: <code>{{ post.comments.count() }}</code> is an error. Write <code>{{ post.comments.count }}</code>.</li>
            <li>Putting anything before <code>{% extends %}</code> in a child template.</li>
            <li>Forgetting the app sub-folder: a template at <code>blog/templates/post_list.html</code> can clash with another app's file of the same name.</li>
            <li>Marking user content as <code>|safe</code> or wrapping it in <code>{% autoescape off %}</code>. This opens an XSS hole.</li>
            <li>A misspelt variable does not raise an error; it silently prints nothing. If a value is missing, check the name in the context.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a third course <code>{"title": "Data Science", "fee": 2999}</code>. Then change the loop so fees above 2000 show <code>[PREMIUM]</code> using <code>{% elif c.fee &gt; 2000 %}</code>. Finally, add <code>{{ c.title|lower|truncatechars:8 }}</code> and see what it prints.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Every form that sends POST data needs <code>{% csrf_token %}</code> inside the <code>&lt;form&gt;</code> tag. You will see why in lesson 9.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.conf import settings

        # Pretend template files: {"file name": "file contents"}
        TEMPLATE_FILES = {
            "base.html": "<title>{% block title %}My Site{% endblock %}</title>\n"
                         "<main>{% block content %}{% endblock %}</main>",
            "courses/list.html": (
                "{% extends 'base.html' %}"
                "{% block title %}Courses ({{ courses|length }}){% endblock %}"
                "{% block content %}\n"
                "{% for c in courses %}"
                "  {{ forloop.counter }}. {{ c.title|upper }} - Rs {{ c.fee }}"
                "{% if c.fee == 0 %} [FREE]{% endif %}\n"
                "{% empty %}  No courses yet.\n{% endfor %}"
                "{% endblock %}"
            ),
        }
        settings.configure(
            DEBUG=True, SECRET_KEY="lesson-only", ALLOWED_HOSTS=["testserver"],
            TEMPLATES=[{
                "BACKEND": "django.template.backends.django.DjangoTemplates",
                "OPTIONS": {"loaders": [("django.template.loaders.locmem.Loader", TEMPLATE_FILES)]},
            }],
        )
        django.setup()

        from django.template import Template, Context
        from django.template.loader import render_to_string

        # 1. Variables, filters and auto-escaping
        t = Template("Hi {{ name|title }}! You have {{ n }} message{{ n|pluralize }}. Bio: {{ bio|default:'(none)' }}")
        print(t.render(Context({"name": "priya sharma", "n": 3, "bio": ""})))

        evil = Template("Comment: {{ text }} | Unsafe: {{ text|safe }}")
        print(evil.render(Context({"text": "<script>alert(1)</script>"})))

        # 2. Template inheritance with a real template "file"
        courses = [
            {"title": "Python Basics", "fee": 0},
            {"title": "Django Web Apps", "fee": 1499},
        ]
        print("\n--- courses/list.html ---")
        print(render_to_string("courses/list.html", {"courses": courses}))
        print("\n--- with an empty list ---")
        print(render_to_string("courses/list.html", {"courses": []}))
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Models and the ORM</h1>
        </div>
        <p class="lc-lead">A <strong>model</strong> is a Python class that describes one database table. Each attribute is a column. Django's <strong>ORM</strong> (Object-Relational Mapper) turns Python calls like <code>Post.objects.create(...)</code> into SQL for you, so the same code works on SQLite, PostgreSQL and MySQL.</p>
        <div class="lc-card">
          <h3>A Model, Line by Line</h3>
        <div class="lc-code"># blog/models.py<br>from django.conf import settings<br>from django.db import models<br>from django.urls import reverse<br><br>class Post(models.Model):<br>&nbsp;&nbsp;&nbsp;&nbsp;class Status(models.TextChoices):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DRAFT = "draft", "Draft"            # value stored, label shown<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PUBLISHED = "published", "Published"<br><br>&nbsp;&nbsp;&nbsp;&nbsp;author = models.ForeignKey(settings.AUTH_USER_MODEL,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;on_delete=models.CASCADE, related_name="posts")<br>&nbsp;&nbsp;&nbsp;&nbsp;title = models.CharField(max_length=200)<br>&nbsp;&nbsp;&nbsp;&nbsp;slug = models.SlugField(unique=True)<br>&nbsp;&nbsp;&nbsp;&nbsp;body = models.TextField(blank=True)<br>&nbsp;&nbsp;&nbsp;&nbsp;price = models.DecimalField(max_digits=8, decimal_places=2, default=0)<br>&nbsp;&nbsp;&nbsp;&nbsp;status = models.CharField(max_length=10, choices=Status, default=Status.DRAFT)<br>&nbsp;&nbsp;&nbsp;&nbsp;created = models.DateTimeField(auto_now_add=True)   # set once, on insert<br>&nbsp;&nbsp;&nbsp;&nbsp;updated = models.DateTimeField(auto_now=True)       # set on every save<br><br>&nbsp;&nbsp;&nbsp;&nbsp;class Meta:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ordering = ["-created"]                          # newest first<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def __str__(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return self.title<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def get_absolute_url(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return reverse("blog:post-detail", args=[self.pk])</div>
          <p>Django adds an automatic primary key <code>id</code> (a <code>BigAutoField</code> when <code>DEFAULT_AUTO_FIELD</code> says so, which new projects do). The table name is <code>appname_modelname</code>, here <code>blog_post</code>. Since Django 5.0 you can pass the choices class directly: <code>choices=Status</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Field Types</h3>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Stores</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td><code>CharField(max_length=...)</code></td><td>Short text</td><td><code>max_length</code> is required</td></tr>
              <tr><td><code>TextField()</code></td><td>Long text</td><td>No length limit</td></tr>
              <tr><td><code>IntegerField()</code>, <code>PositiveIntegerField()</code></td><td>Whole numbers</td><td>Counts, stock, age</td></tr>
              <tr><td><code>DecimalField(max_digits, decimal_places)</code></td><td>Exact decimals</td><td>Use for money, never <code>FloatField</code></td></tr>
              <tr><td><code>BooleanField(default=False)</code></td><td>True / False</td><td>Give it a default</td></tr>
              <tr><td><code>DateField()</code>, <code>DateTimeField()</code></td><td>Dates and times</td><td><code>auto_now_add</code> / <code>auto_now</code></td></tr>
              <tr><td><code>EmailField()</code>, <code>URLField()</code>, <code>SlugField()</code></td><td>Text with validation</td><td>Checked by forms and <code>full_clean()</code></td></tr>
              <tr><td><code>JSONField()</code></td><td>JSON data</td><td>Works on all main databases</td></tr>
            </tbody>
          </table>
          <p><strong><code>null</code> vs <code>blank</code>:</strong> <code>null=True</code> lets the <em>database</em> store NULL. <code>blank=True</code> lets <em>forms</em> accept an empty value. For text fields use <code>blank=True</code> only, so "empty" is always <code>""</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Relationships</h3>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>ForeignKey</code></td><td>Many-to-one</td><td>Many posts belong to one author</td></tr>
              <tr><td><code>ManyToManyField</code></td><td>Many-to-many</td><td>A post has many tags; a tag has many posts</td></tr>
              <tr><td><code>OneToOneField</code></td><td>One-to-one</td><td>Each user has one profile</td></tr>
            </tbody>
          </table>
          <p><code>on_delete</code> is required on <code>ForeignKey</code>: <code>CASCADE</code> (delete the posts too), <code>PROTECT</code> (refuse to delete the author), <code>SET_NULL</code> (needs <code>null=True</code>). <code>related_name="posts"</code> gives the reverse link <code>author.posts.all()</code>; without it the name would be <code>author.post_set</code>.</p>
          <p><strong>Linking to users:</strong> always write <code>settings.AUTH_USER_MODEL</code> (a string like <code>"auth.User"</code> or <code>"accounts.User"</code>), not <code>User</code> or a hard-coded <code>"auth.User"</code>. Then your models still work if the project uses a custom user model (lesson 12).</p>
        </div>
        <div class="lc-card">
          <h3>Create, Read, Update, Delete</h3>
        <div class="lc-code">post = Post.objects.create(author=asha, title="Hello")   # INSERT, returns the object<br>post = Post(author=asha, title="Draft")                  # in memory only...<br>post.save()                                              # ...INSERT now<br>post.title = "New title"; post.save()                    # UPDATE<br>Post.objects.get(pk=1)                                   # SELECT one (error if 0 or 2+)<br>Post.objects.all()                                       # SELECT all (lesson 7)<br>post.delete()                                            # DELETE</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <p>In a real project your models live in <code>blog/models.py</code> and Django knows they belong to the <code>blog</code> app. The editor has one file, so the starter declares a small <code>BlogConfig(AppConfig)</code> class that says "this file is the blog app" and lists it in <code>INSTALLED_APPS</code>. It then creates the two tables with <code>connection.schema_editor()</code> (in a real project, <code>migrate</code> does this, lesson 6) and saves, changes and deletes rows:</p>
        <div class="lc-code">p2.id before save: None<br>p2.id after save:  2<br>Fetched by pk:     ORM Tips and Tricks (Draft)<br>Post -&gt; author:    Asha<br>Author -&gt; posts:   ['Hello Django (Published)', 'ORM Tips and Tricks (Draft)']<br>Table name:        blog_post<br>Posts left:        1</div>
          <p>An object has no <code>id</code> until it is saved. <code>get_status_display()</code> is created automatically for fields with <code>choices</code> and returns the label ("Draft") instead of the stored value ("draft").</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>FloatField</code> for money: <code>0.1 + 0.2</code> is not exactly <code>0.3</code>. Use <code>DecimalField</code>.</li>
            <li>Using <code>null=True</code> on <code>CharField</code>. Now "empty" can be both <code>NULL</code> and <code>""</code>.</li>
            <li>Writing <code>ForeignKey(User, ...)</code> with <code>from django.contrib.auth.models import User</code>. Use <code>settings.AUTH_USER_MODEL</code>.</li>
            <li>Forgetting <code>__str__</code>. The admin and shell then show "Post object (1)".</li>
            <li>Changing a model and forgetting to run <code>makemigrations</code> and <code>migrate</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a field <code>views = models.PositiveIntegerField(default=0)</code> to <code>Post</code>. After creating <code>p2</code>, set <code>p2.views = 10</code>, save it, fetch it again with <code>Post.objects.get(pk=p2.pk)</code> and print its <code>views</code>. Then try <code>Author.objects.create(name="Copy", email="asha@example.com")</code>: which error does <code>unique=True</code> cause?</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>python manage.py shell</code> opens Python with your project loaded. Since Django 5.2 it imports all your models automatically, so you can type <code>Post.objects.all()</code> straight away.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class BlogConfig(AppConfig):        # this file plays the role of the "blog" app
            name, label, path = "__main__", "blog", "."

        settings.configure(SECRET_KEY="lesson-only", USE_TZ=True, INSTALLED_APPS=["__main__.BlogConfig"],
                           DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
                           DEFAULT_AUTO_FIELD="django.db.models.BigAutoField")
        django.setup()

        from django.db import models, connection

        class Author(models.Model):
            name = models.CharField(max_length=100)
            email = models.EmailField(unique=True)

        class Post(models.Model):
            class Status(models.TextChoices):
                DRAFT = "draft", "Draft"
                PUBLISHED = "published", "Published"

            author = models.ForeignKey(Author, on_delete=models.CASCADE, related_name="posts")
            title = models.CharField(max_length=200)
            body = models.TextField(blank=True)
            status = models.CharField(max_length=10, choices=Status, default=Status.DRAFT)
            created = models.DateTimeField(auto_now_add=True)

            class Meta:
                ordering = ["title"]

            def __str__(self):
                return f"{self.title} ({self.get_status_display()})"

        with connection.schema_editor() as editor:   # "migrate" does this in a real project
            editor.create_model(Author)
            editor.create_model(Post)

        asha = Author.objects.create(name="Asha", email="asha@example.com")               # INSERT
        p1 = Post.objects.create(author=asha, title="Hello Django", status="published")
        p2 = Post(author=asha, title="ORM Tips")                                           # not saved yet
        print("p2.id before save:", p2.id)
        p2.save()
        print("p2.id after save: ", p2.id)
        p2.title = "ORM Tips and Tricks"                                                   # UPDATE
        p2.save()
        print("Fetched by pk:    ", Post.objects.get(pk=p2.pk))
        print("Post -> author:   ", p1.author.name)
        print("Author -> posts:  ", [str(p) for p in asha.posts.all()])
        print("Table name:       ", Post._meta.db_table)
        p1.delete()                                                                        # DELETE
        print("Posts left:       ", Post.objects.count())
      PYTHON
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Migrations</h1>
        </div>
        <p class="lc-lead">Your models change as your project grows. <strong>Migrations</strong> are Python files that record each change ("create table Book", "add column pages") so every database (your laptop, your teammate's, production) can be updated in the same order, safely.</p>
        <div class="lc-card">
          <h3>The Two-Step Workflow</h3>
          <ol class="lc-list">
            <li>Edit <code>models.py</code>.</li>
            <li><code>python manage.py makemigrations</code> compares your models with the existing migration files and <strong>writes</strong> a new file such as <code>blog/migrations/0002_post_views.py</code>. It does not touch the database.</li>
            <li><code>python manage.py migrate</code> <strong>applies</strong> every migration that has not run yet, and records it in the <code>django_migrations</code> table.</li>
            <li>Commit the migration file to Git together with the model change.</li>
          </ol>
        <div class="lc-code">$ python manage.py makemigrations blog<br>Migrations for 'blog':<br>&nbsp;&nbsp;blog/migrations/0002_post_views.py<br>&nbsp;&nbsp;&nbsp;&nbsp;+ Add field views to post<br>$ python manage.py migrate<br>Operations to perform:<br>&nbsp;&nbsp;Apply all migrations: admin, auth, blog, contenttypes, sessions<br>Running migrations:<br>&nbsp;&nbsp;Applying blog.0002_post_views... OK</div>
        </div>
        <div class="lc-card">
          <h3>Useful Commands</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>makemigrations</code></td><td>Write new migration files from model changes</td></tr>
              <tr><td><code>migrate</code></td><td>Apply pending migrations to the database</td></tr>
              <tr><td><code>showmigrations</code></td><td>List migrations; <code>[X]</code> = applied, <code>[ ]</code> = pending</td></tr>
              <tr><td><code>sqlmigrate blog 0002</code></td><td>Show the SQL a migration will run (does not run it)</td></tr>
              <tr><td><code>migrate blog 0001</code></td><td>Roll back: undo blog migrations after 0001</td></tr>
              <tr><td><code>makemigrations --empty blog</code></td><td>Create an empty file for a hand-written data migration</td></tr>
              <tr><td><code>makemigrations --check --dry-run</code></td><td>Fail (for CI) if a model change has no migration</td></tr>
              <tr><td><code>squashmigrations blog 0001 0020</code></td><td>Combine many old migrations into one</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Inside a Migration File</h3>
        <div class="lc-code"># blog/migrations/0002_post_views.py  (generated)<br>from django.db import migrations, models<br><br>class Migration(migrations.Migration):<br>&nbsp;&nbsp;&nbsp;&nbsp;dependencies = [("blog", "0001_initial")]      # must run after 0001<br>&nbsp;&nbsp;&nbsp;&nbsp;operations = [<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;migrations.AddField(<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;model_name="post",<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name="views",<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;field=models.PositiveIntegerField(default=0),<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;),<br>&nbsp;&nbsp;&nbsp;&nbsp;]</div>
          <p><code>dependencies</code> give the order; <code>operations</code> say what to change. Common operations: <code>CreateModel</code>, <code>DeleteModel</code>, <code>AddField</code>, <code>RemoveField</code>, <code>AlterField</code>, <code>RenameField</code>, <code>AddIndex</code>, <code>RunPython</code>, <code>RunSQL</code>.</p>
          <p>If you add a non-null field to a table that already has rows, <code>makemigrations</code> asks you for a one-off default to fill those rows. Giving the field a <code>default=</code> avoids the question.</p>
        </div>
        <div class="lc-card">
          <h3>Data Migrations with RunPython</h3>
          <p>Some changes move <em>data</em>, not just columns (fill a new <code>slug</code> from the title, split a <code>name</code> field). Write them as a <code>RunPython</code> operation:</p>
        <div class="lc-code">def fill_slugs(apps, schema_editor):<br>&nbsp;&nbsp;&nbsp;&nbsp;Post = apps.get_model("blog", "Post")          # the model as it was at this point<br>&nbsp;&nbsp;&nbsp;&nbsp;for post in Post.objects.filter(slug=""):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;post.slug = slugify(post.title)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;post.save(update_fields=["slug"])<br><br>class Migration(migrations.Migration):<br>&nbsp;&nbsp;&nbsp;&nbsp;dependencies = [("blog", "0003_post_slug")]<br>&nbsp;&nbsp;&nbsp;&nbsp;operations = [migrations.RunPython(fill_slugs, migrations.RunPython.noop)]</div>
          <p>Use <code>apps.get_model()</code>, not <code>from blog.models import Post</code>. The imported class is today's model, which may have fields that did not exist when this migration was written. The second argument (<code>noop</code>) lets the migration be rolled back.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <p>The starter defines three real migration classes and applies them with the same <code>Migration.apply()</code> method that <code>migrate</code> uses. It first prints the SQL, like <code>sqlmigrate</code>:</p>
        <div class="lc-code">[X] library.0001_initial<br>&nbsp;&nbsp;&nbsp;&nbsp;-- Create model Book<br>&nbsp;&nbsp;&nbsp;&nbsp;CREATE TABLE "library_book" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(100) NOT NULL);<br>[X] library.0002_add_books<br>&nbsp;&nbsp;&nbsp;&nbsp;-- Raw Python operation<br>&nbsp;&nbsp;&nbsp;&nbsp;-- THIS OPERATION CANNOT BE WRITTEN AS SQL<br>[X] library.0003_book_pages<br>&nbsp;&nbsp;&nbsp;&nbsp;-- Add field pages to book<br>&nbsp;&nbsp;&nbsp;&nbsp;CREATE TABLE "new__library_book" (... "pages" integer unsigned NOT NULL CHECK ("pages" &gt;= 0));<br>&nbsp;&nbsp;&nbsp;&nbsp;INSERT INTO "new__library_book" ("id", "title", "pages") SELECT "id", "title", 0 FROM "library_book";<br>&nbsp;&nbsp;&nbsp;&nbsp;DROP TABLE "library_book";<br>&nbsp;&nbsp;&nbsp;&nbsp;ALTER TABLE "new__library_book" RENAME TO "library_book";<br><br>Tables: ['library_book']<br>Books: [('Malgudi Days', 0), ('Wings of Fire', 0)]</div>
          <p>Look at 0003: SQLite cannot change some columns in place, so Django builds a new table, copies the rows and renames it. On PostgreSQL the same migration is a single <code>ALTER TABLE ... ADD COLUMN</code>. You wrote the change once, and Django produced the right SQL for each database.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking <code>makemigrations</code> changes the database. It only writes a file; <code>migrate</code> applies it.</li>
            <li>Editing or deleting a migration that has already run on another database. Add a new migration instead.</li>
            <li>Not committing migration files, so teammates and production get a different schema.</li>
            <li>Importing real models inside <code>RunPython</code> instead of using <code>apps.get_model()</code>.</li>
            <li>Two developers creating <code>0005_...</code> at the same time. Run <code>makemigrations --merge</code> to fix the conflict.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a fourth migration class <code>Migration0004</code> that depends on <code>("library", "0003_book_pages")</code> and uses <code>migrations.AddField("book", "author", models.CharField(max_length=100, default="Unknown"))</code>. Apply it with <code>migrate(...)</code> and print the books with their author.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before deploying, run <code>python manage.py migrate --plan</code> to see exactly which migrations will run, and <code>sqlmigrate</code> on any migration that touches a big table.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Real migrations, applied the way "python manage.py migrate" applies them
        import django
        from django.conf import settings

        settings.configure(SECRET_KEY="lesson-only",
                           DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}})
        django.setup()

        from django.db import connection, migrations, models
        from django.db.migrations.state import ProjectState

        class Migration0001(migrations.Migration):      # 0001_initial.py, written by makemigrations
            initial = True
            dependencies = []
            operations = [migrations.CreateModel(name="Book", fields=[
                ("id", models.BigAutoField(primary_key=True)),
                ("title", models.CharField(max_length=100)),
            ])]

        def add_books(apps, schema_editor):              # data migration code
            Book = apps.get_model("library", "Book")     # historical model, not an import
            Book.objects.bulk_create([Book(title="Wings of Fire"), Book(title="Malgudi Days")])

        class Migration0002(migrations.Migration):      # written by hand: makemigrations --empty
            dependencies = [("library", "0001_initial")]
            operations = [migrations.RunPython(add_books, migrations.RunPython.noop)]

        class Migration0003(migrations.Migration):      # after adding "pages" to the model
            dependencies = [("library", "0002_add_books")]
            operations = [migrations.AddField("book", "pages", models.PositiveIntegerField(default=0))]

        def migrate(migration_class, name, state):
            migration = migration_class(name, "library")
            with connection.schema_editor(collect_sql=True) as editor:   # like sqlmigrate
                migration.apply(state.clone(), editor, collect_sql=True)
            print(f"[X] library.{name}")
            for sql in editor.collected_sql:
                if sql != "--":
                    print("   ", sql)
            with connection.schema_editor() as editor:                   # really apply it
                return migration.apply(state, editor)

        state = ProjectState()
        state = migrate(Migration0001, "0001_initial", state)
        state = migrate(Migration0002, "0002_add_books", state)
        state = migrate(Migration0003, "0003_book_pages", state)

        print("\nTables:", connection.introspection.table_names())
        Book = state.apps.get_model("library", "Book")
        print("Books:", list(Book.objects.order_by("title").values_list("title", "pages")))
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">QuerySet API</h1>
        </div>
        <p class="lc-lead">A <strong>QuerySet</strong> is a list of database rows that Django has not fetched yet. You build it step by step with <code>filter()</code>, <code>exclude()</code> and <code>order_by()</code>, and Django turns the whole chain into <strong>one</strong> SQL query when you finally use the results.</p>
        <div class="lc-card">
          <h3>QuerySets Are Lazy</h3>
        <div class="lc-code">qs = Product.objects.filter(price__lt=1000)   # no SQL yet<br>qs = qs.exclude(stock=0)                        # no SQL yet<br>qs = qs.order_by("-price")                      # no SQL yet<br>for p in qs:                                    # SQL runs here, once<br>&nbsp;&nbsp;&nbsp;&nbsp;print(p.name)</div>
          <p>A QuerySet runs its SQL when you <strong>evaluate</strong> it: loop over it, call <code>list()</code>, <code>len()</code> or <code>bool()</code>, slice it with a step, or print it. Each <code>filter()</code> returns a <em>new</em> QuerySet, so you can safely reuse a base query. After evaluation, the results are cached on that QuerySet object.</p>
        </div>
        <div class="lc-card">
          <h3>Field Lookups: field__lookup=value</h3>
          <table class="lc-table">
            <thead><tr><th>Lookup</th><th>SQL idea</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>exact</code> (default)</td><td><code>=</code></td><td><code>filter(stock=0)</code></td></tr>
              <tr><td><code>iexact</code></td><td>equal, ignoring case</td><td><code>filter(name__iexact="keyboard")</code></td></tr>
              <tr><td><code>contains</code> / <code>icontains</code></td><td><code>LIKE '%...%'</code></td><td><code>filter(name__icontains="python")</code></td></tr>
              <tr><td><code>startswith</code></td><td><code>LIKE '...%'</code></td><td><code>filter(name__startswith="USB")</code></td></tr>
              <tr><td><code>gt</code>, <code>gte</code>, <code>lt</code>, <code>lte</code></td><td><code>&gt; &gt;= &lt; &lt;=</code></td><td><code>filter(price__gte=500)</code></td></tr>
              <tr><td><code>in</code></td><td><code>IN (...)</code></td><td><code>filter(pk__in=[1, 2, 3])</code></td></tr>
              <tr><td><code>range</code></td><td><code>BETWEEN</code></td><td><code>filter(price__range=(100, 500))</code></td></tr>
              <tr><td><code>isnull</code></td><td><code>IS NULL</code></td><td><code>filter(category__isnull=True)</code></td></tr>
              <tr><td>across relations</td><td><code>JOIN</code></td><td><code>filter(category__name="Books")</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Q, F, Aggregates and Annotations</h3>
        <div class="lc-code">from django.db.models import Q, F, Count, Avg, Sum<br><br>Product.objects.filter(Q(price__lt=300) | Q(stock=0))    # OR<br>Product.objects.filter(~Q(category__name="Tech"))         # NOT<br>Product.objects.filter(stock__lt=F("reorder_level"))      # compare two columns<br>Product.objects.update(stock=F("stock") + 10)             # safe increment in SQL<br><br>Product.objects.aggregate(avg=Avg("price"))               # {'avg': Decimal('661.75')}<br>Category.objects.annotate(n=Count("products"))            # adds .n to each category</div>
          <p><code>aggregate()</code> returns one dictionary for the whole QuerySet. <code>annotate()</code> adds a calculated value to <em>each</em> row. Keyword arguments in one <code>filter()</code> are joined with AND; use <code>Q</code> objects for OR and NOT.</p>
        </div>
        <div class="lc-card">
          <h3>Methods You Will Use Every Day</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td><code>all()</code>, <code>filter()</code>, <code>exclude()</code>, <code>order_by()</code></td><td>QuerySet</td><td>Chainable and lazy</td></tr>
              <tr><td><code>get(**kwargs)</code></td><td>One object</td><td>Raises <code>DoesNotExist</code> or <code>MultipleObjectsReturned</code></td></tr>
              <tr><td><code>first()</code>, <code>last()</code></td><td>Object or <code>None</code></td><td>Never raises</td></tr>
              <tr><td><code>count()</code>, <code>exists()</code></td><td>int / bool</td><td>Fast: done in SQL</td></tr>
              <tr><td><code>values()</code>, <code>values_list("name", flat=True)</code></td><td>dicts / tuples / values</td><td>No model objects, less memory</td></tr>
              <tr><td><code>qs[:10]</code></td><td>QuerySet</td><td>Becomes <code>LIMIT 10</code></td></tr>
              <tr><td><code>update()</code>, <code>delete()</code></td><td>Number of rows</td><td>One SQL statement for all rows</td></tr>
              <tr><td><code>create()</code>, <code>bulk_create([...])</code>, <code>get_or_create()</code></td><td>Object(s)</td><td>Insert rows</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">SQL ends with: ("shop_product"."price" &lt; 1000 AND NOT ("shop_product"."stock" = 0)) ORDER BY "shop_product"."price" DESC<br>1. In stock under Rs 1000: ['Django Guide', 'USB-C Cable']<br>2. icontains 'python': ['Python Crash Course']<br>3. Books category (across FK): 2<br>4. Q (cheap OR out of stock): ['Python Crash Course', 'USB-C Cable']<br>5. Tech stock after F(): [('USB-C Cable', 50), ('Keyboard', 15)]<br>6. Aggregate: avg price 661.75 | total stock 77<br>7. Annotate: Books has 2 products<br>7. Annotate: Tech has 2 products<br>8. first(): Django Guide | exists(): False</div>
          <p>Line 1 shows that three chained calls became one <code>WHERE ... ORDER BY</code> clause. Print <code>qs.query</code> any time you want to see the SQL Django will run.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>len(qs)</code> just to count rows. It loads every row; use <code>qs.count()</code>. Use <code>qs.exists()</code> instead of <code>if qs:</code> when you do not need the rows.</li>
            <li>Using <code>get()</code> when there may be no match. Catch <code>Product.DoesNotExist</code>, or use <code>first()</code> or <code>get_object_or_404()</code> in views.</li>
            <li><code>p.stock = p.stock + 1; p.save()</code> under heavy traffic: two requests can overwrite each other. Use <code>F("stock") + 1</code>.</li>
            <li>Expecting <code>filter()</code> to change the old QuerySet. It returns a new one; write <code>qs = qs.filter(...)</code>.</li>
            <li>Negative indexing: <code>qs[-1]</code> is not supported. Use <code>qs.last()</code> or reverse the order.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Using the starter data, write queries that print: (a) products whose name starts with "P" or "K" (use <code>Q</code>); (b) the most expensive product with <code>order_by("-price").first()</code>; (c) each category with its total stock using <code>annotate(total=Sum("products__stock"))</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put queries you repeat in a custom manager or QuerySet method, for example <code>Product.objects.in_stock()</code>. Your views stay short, and the rule lives in one place.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class ShopConfig(AppConfig):        # this file plays the role of the "shop" app
            name, label, path = "__main__", "shop", "."

        settings.configure(SECRET_KEY="lesson-only", INSTALLED_APPS=["__main__.ShopConfig"],
                           DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}})
        django.setup()

        from django.db import models, connection
        from django.db.models import Q, F, Count, Avg, Sum

        class Category(models.Model):
            name = models.CharField(max_length=50)

        class Product(models.Model):
            name = models.CharField(max_length=100)
            category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name="products")
            price = models.DecimalField(max_digits=8, decimal_places=2)
            stock = models.PositiveIntegerField(default=0)

        with connection.schema_editor() as editor:     # create the tables (migrate does this normally)
            editor.create_model(Category)
            editor.create_model(Product)

        books, tech = Category.objects.create(name="Books"), Category.objects.create(name="Tech")
        Product.objects.bulk_create([
            Product(name="Django Guide", category=books, price=499, stock=12),
            Product(name="Python Crash Course", category=books, price=650, stock=0),
            Product(name="USB-C Cable", category=tech, price=199, stock=40),
            Product(name="Keyboard", category=tech, price=1299, stock=5),
        ])

        qs = Product.objects.filter(price__lt=1000)           # lazy: no SQL yet
        qs = qs.exclude(stock=0).order_by("-price")           # still no SQL
        print("SQL ends with:", str(qs.query).split("WHERE ")[1])
        print("1. In stock under Rs 1000:", [p.name for p in qs])   # SQL runs now

        print("2. icontains 'python':", list(Product.objects.filter(name__icontains="python").values_list("name", flat=True)))
        print("3. Books category (across FK):", Product.objects.filter(category__name="Books").count())
        print("4. Q (cheap OR out of stock):", list(Product.objects.filter(Q(price__lt=300) | Q(stock=0)).values_list("name", flat=True)))

        Product.objects.filter(category=tech).update(stock=F("stock") + 10)   # done inside the database
        print("5. Tech stock after F():", list(tech.products.values_list("name", "stock")))

        stats = Product.objects.aggregate(avg=Avg("price"), total_stock=Sum("stock"))
        print("6. Aggregate: avg price", round(stats["avg"], 2), "| total stock", stats["total_stock"])
        for cat in Category.objects.annotate(n=Count("products")).order_by("name"):
            print(f"7. Annotate: {cat.name} has {cat.n} products")
        print("8. first():", Product.objects.order_by("name").first().name, "| exists():", Product.objects.filter(price__gt=5000).exists())
      PYTHON
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Django Admin</h1>
        </div>
        <p class="lc-lead">The <strong>admin site</strong> is a ready-made back office. Register a model and staff users can list, search, filter, add, edit and delete its rows in the browser, without you writing a single view or template.</p>
        <div class="lc-card">
          <h3>Turning It On</h3>
          <p>New projects already include <code>django.contrib.admin</code> in <code>INSTALLED_APPS</code> and <code>path("admin/", admin.site.urls)</code> in the root <code>urls.py</code>. You only need a staff account:</p>
        <div class="lc-code">$ python manage.py migrate<br>$ python manage.py createsuperuser<br>Username: boss<br>Email address: boss@example.com<br>Password: ********<br>Superuser created successfully.<br>$ python manage.py runserver      # open http://127.0.0.1:8000/admin/</div>
        </div>
        <div class="lc-card">
          <h3>Registering a Model with ModelAdmin</h3>
        <div class="lc-code"># blog/admin.py<br>from django.contrib import admin<br>from .models import Post<br><br>@admin.register(Post)<br>class PostAdmin(admin.ModelAdmin):<br>&nbsp;&nbsp;&nbsp;&nbsp;list_display = ["title", "status", "views", "is_popular"]   # columns<br>&nbsp;&nbsp;&nbsp;&nbsp;list_filter = ["status", "created"]                        # sidebar filters<br>&nbsp;&nbsp;&nbsp;&nbsp;search_fields = ["title", "author__username"]              # search box<br>&nbsp;&nbsp;&nbsp;&nbsp;ordering = ["-views"]<br>&nbsp;&nbsp;&nbsp;&nbsp;prepopulated_fields = {"slug": ["title"]}                  # fill slug as you type<br>&nbsp;&nbsp;&nbsp;&nbsp;readonly_fields = ["created"]<br>&nbsp;&nbsp;&nbsp;&nbsp;list_per_page = 25<br>&nbsp;&nbsp;&nbsp;&nbsp;actions = ["make_live"]<br><br>&nbsp;&nbsp;&nbsp;&nbsp;@admin.display(boolean=True, description="Popular?")<br>&nbsp;&nbsp;&nbsp;&nbsp;def is_popular(self, obj):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return obj.views &gt;= 100<br><br>&nbsp;&nbsp;&nbsp;&nbsp;@admin.action(description="Mark selected posts as live")<br>&nbsp;&nbsp;&nbsp;&nbsp;def make_live(self, request, queryset):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;updated = queryset.update(status="live")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.message_user(request, f"{updated} posts marked live.")</div>
          <p>The simple form <code>admin.site.register(Post)</code> also works, but a <code>ModelAdmin</code> class makes the admin far more useful.</p>
        </div>
        <div class="lc-card">
          <h3>The Most Useful Options</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Page</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>list_display</code></td><td>List</td><td>Columns: fields or methods</td></tr>
              <tr><td><code>list_filter</code></td><td>List</td><td>Filters in the sidebar; URL like <code>?status__exact=draft</code></td></tr>
              <tr><td><code>search_fields</code></td><td>List</td><td>Search box; URL like <code>?q=admin</code> (uses <code>icontains</code>)</td></tr>
              <tr><td><code>list_editable</code></td><td>List</td><td>Edit a column directly in the list</td></tr>
              <tr><td><code>fields</code> / <code>fieldsets</code></td><td>Edit</td><td>Which fields appear and how they are grouped</td></tr>
              <tr><td><code>readonly_fields</code></td><td>Edit</td><td>Shown but not editable</td></tr>
              <tr><td><code>inlines</code></td><td>Edit</td><td>Edit related rows (comments of a post) on the same page</td></tr>
              <tr><td><code>autocomplete_fields</code></td><td>Edit</td><td>Search box instead of a huge drop-down for foreign keys</td></tr>
              <tr><td><code>list_select_related</code></td><td>List</td><td>Avoid one extra query per row for foreign keys</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Driving the Admin with the Test Client</h3>
          <p>The starter registers <code>PostAdmin</code>, creates a superuser, logs in with <code>client.force_login()</code> and requests real admin pages. It prints which post titles appear on each page, in the order shown:</p>
        <div class="lc-code">Not logged in: 302 -&gt; redirect to the login page<br>Add form POST: 302 -&gt; /admin/blog/post/<br>Index lists Posts: True<br>/admin/blog/post/                      ['Django Admin Tour', 'Admin Search Tips', 'Draft Ideas', 'Added via Admin']<br>/admin/blog/post/?q=admin              ['Django Admin Tour', 'Admin Search Tips', 'Added via Admin']<br>/admin/blog/post/?status__exact=draft  ['Draft Ideas', 'Added via Admin']</div>
          <ul class="lc-list">
            <li>The list is sorted by <code>ordering = ["-views"]</code> (250, 90, 3, 0 views).</li>
            <li><code>?q=admin</code> is the search box: it matched every title containing "admin", in any case.</li>
            <li><code>?status__exact=draft</code> is what clicking "Draft" in the sidebar filter does.</li>
            <li>Posting the add form created a row and redirected back to the list, just as in the browser.</li>
          </ul>
          <p>Because this file is not a real app folder, the starter defines <code>BlogConfig</code> so the admin can find the "blog" app, and runs <code>migrate</code> for the built-in apps.</p>
        </div>
        <div class="lc-card">
          <h3>Who Can Use the Admin?</h3>
          <p>Only users with <code>is_staff=True</code> can log in. A superuser (<code>is_superuser=True</code>) can do everything. Other staff users see only the models for which they have the add, change, delete or view <strong>permissions</strong> (lesson 12). Every change is recorded in the admin's history log.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using the admin as the public website. It is a tool for trusted staff, not for customers.</li>
            <li>Putting a <code>ManyToManyField</code> in <code>list_display</code>. It is not allowed; write a method that joins the names instead.</li>
            <li>Leaving the admin at <code>/admin/</code> with weak passwords. Use strong passwords, and consider a less obvious path and two-factor login.</li>
            <li>Forgetting <code>__str__</code> on models, so drop-downs and messages show "Post object (3)".</li>
            <li>Slow list pages because each row triggers a query for its foreign key. Add <code>list_select_related</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, add <code>"views"</code> to a new option <code>list_editable = ["views"]</code> (it must also be in <code>list_display</code>, and not the first column). Then add a fourth URL <code>"/admin/blog/post/?q=tips"</code> to the loop and predict which titles it will show before you run it.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Set <code>admin.site.site_header = "Priya's Blog Admin"</code> in <code>admin.py</code> to brand the admin in one line.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class BlogConfig(AppConfig):        # this file plays the role of the "blog" app
            name, label, path = "__main__", "blog", "."

        CP = "django.template.context_processors.request django.contrib.auth.context_processors.auth " \
             "django.contrib.messages.context_processors.messages"
        settings.configure(
            SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            INSTALLED_APPS=["django.contrib.admin", "django.contrib.auth", "django.contrib.contenttypes",
                            "django.contrib.sessions", "django.contrib.messages", "__main__.BlogConfig"],
            MIDDLEWARE=["django.contrib.sessions.middleware.SessionMiddleware",
                        "django.contrib.auth.middleware.AuthenticationMiddleware",
                        "django.contrib.messages.middleware.MessageMiddleware"],
            TEMPLATES=[{"BACKEND": "django.template.backends.django.DjangoTemplates", "APP_DIRS": True,
                        "OPTIONS": {"context_processors": CP.split()}}],
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
        )
        django.setup()
        from django.contrib import admin
        from django.db import models, connection
        from django.urls import path

        class Post(models.Model):
            title = models.CharField(max_length=200)
            status = models.CharField(max_length=10, choices=[("draft", "Draft"), ("live", "Live")])
            views = models.PositiveIntegerField(default=0)
            def __str__(self):
                return self.title

        @admin.register(Post)                        # this part goes in blog/admin.py
        class PostAdmin(admin.ModelAdmin):
            list_display = ["title", "status", "views", "is_popular"]
            list_filter = ["status"]
            search_fields = ["title"]
            ordering = ["-views"]

            @admin.display(boolean=True, description="Popular?")
            def is_popular(self, obj):
                return obj.views >= 100

        urlpatterns = [path("admin/", admin.site.urls)]

        from django.contrib.auth.models import User
        from django.core.management import call_command
        from django.test import Client
        call_command("migrate", verbosity=0)         # tables for auth, admin, sessions...
        with connection.schema_editor() as editor:
            editor.create_model(Post)
        Post.objects.bulk_create([Post(title="Django Admin Tour", status="live", views=250),
                                  Post(title="Draft Ideas", status="draft", views=3),
                                  Post(title="Admin Search Tips", status="live", views=90)])
        boss = User.objects.create_superuser("boss", "boss@example.com", password=None)  # like createsuperuser
        client = Client()
        client.force_login(boss)                     # skip the login form in this demo

        print("Not logged in:", Client().get("/admin/blog/post/").status_code, "-> redirect to the login page")
        r = client.post("/admin/blog/post/add/", {"title": "Added via Admin", "status": "draft", "views": 0})
        print("Add form POST:", r.status_code, "->", r["Location"])
        print("Index lists Posts:", 'href="/admin/blog/post/"' in client.get("/admin/").content.decode())
        for url in ["/admin/blog/post/", "/admin/blog/post/?q=admin", "/admin/blog/post/?status__exact=draft"]:
            html = client.get(url).content.decode()
            rows = sorted((html.find(f">{p.title}</a>"), p.title) for p in Post.objects.all())
            print(f"{url:<38} {[title for pos, title in rows if pos > 0]}")
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Forms and Validation</h1>
        </div>
        <p class="lc-lead">Never trust data from the browser. A Django <strong>form</strong> does three jobs: it renders HTML inputs, it <strong>validates</strong> what the user sends, and it converts the text into Python values (<code>"21"</code> becomes <code>21</code>). A <strong>ModelForm</strong> builds the form straight from a model and can save it.</p>
        <div class="lc-card">
          <h3>How a Form Works</h3>
          <ol class="lc-list">
            <li>Create a bound form with the submitted data: <code>form = EnquiryForm(request.POST)</code>.</li>
            <li>Call <code>form.is_valid()</code>. Django runs every field's checks, then your <code>clean_&lt;field&gt;()</code> methods, then <code>clean()</code>.</li>
            <li>If valid, read the converted values from <code>form.cleaned_data</code>.</li>
            <li>If not, <code>form.errors</code> holds messages per field, and re-rendering the form shows them next to the inputs.</li>
          </ol>
        <div class="lc-code">from django import forms<br><br>class EnquiryForm(forms.Form):<br>&nbsp;&nbsp;&nbsp;&nbsp;name = forms.CharField(max_length=50)<br>&nbsp;&nbsp;&nbsp;&nbsp;email = forms.EmailField()<br>&nbsp;&nbsp;&nbsp;&nbsp;age = forms.IntegerField(min_value=16)<br>&nbsp;&nbsp;&nbsp;&nbsp;course = forms.ChoiceField(choices=[("py", "Python"), ("dj", "Django")])<br>&nbsp;&nbsp;&nbsp;&nbsp;referral = forms.CharField(required=False)<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def clean_name(self):                    # check or tidy one field<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return self.cleaned_data["name"].strip().title()<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def clean(self):                         # rules that need several fields<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;data = super().clean()<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if data.get("course") == "dj" and data.get("age", 99) &lt; 18:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raise forms.ValidationError("Django batch is for students aged 18+.")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return data</div>
        </div>
        <div class="lc-card">
          <h3>The View Pattern</h3>
        <div class="lc-code">def enquire(request):<br>&nbsp;&nbsp;&nbsp;&nbsp;form = EnquiryForm(request.POST or None)          # bound on POST, empty on GET<br>&nbsp;&nbsp;&nbsp;&nbsp;if request.method == "POST" and form.is_valid():<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;save_enquiry(form.cleaned_data)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;messages.success(request, "Thanks! We will call you.")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return redirect("enquiry-thanks")             # Post/Redirect/Get<br>&nbsp;&nbsp;&nbsp;&nbsp;return render(request, "enquiry.html", {"form": form})</div>
        <div class="lc-code">&lt;form method="post"&gt;<br>&nbsp;&nbsp;{% csrf_token %}<br>&nbsp;&nbsp;{{ form.as_div }}          {# or loop over fields for full control #}<br>&nbsp;&nbsp;&lt;button type="submit"&gt;Send&lt;/button&gt;<br>&lt;/form&gt;</div>
          <p>Since Django 5.0 you can also render one field with its label, help text and errors using <code>{{ form.email.as_field_group }}</code>.</p>
        </div>
        <div class="lc-card">
          <h3>CSRF Protection</h3>
          <p>A <strong>Cross-Site Request Forgery</strong> attack tricks a logged-in user's browser into posting a form from another website. <code>CsrfViewMiddleware</code> rejects any POST that does not carry the secret token printed by <code>{% csrf_token %}</code>, with a <code>403 Forbidden</code>. Keep the middleware on and put the tag in every POST form.</p>
        </div>
        <div class="lc-card">
          <h3>ModelForm: Forms from Models</h3>
        <div class="lc-code">class PostForm(forms.ModelForm):<br>&nbsp;&nbsp;&nbsp;&nbsp;class Meta:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;model = Post<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fields = ["title", "body", "status"]      # list fields explicitly<br><br>def post_create(request):<br>&nbsp;&nbsp;&nbsp;&nbsp;form = PostForm(request.POST or None)<br>&nbsp;&nbsp;&nbsp;&nbsp;if request.method == "POST" and form.is_valid():<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;post = form.save(commit=False)          # object built, not saved yet<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;post.author = request.user              # fill fields the user must not choose<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;post.save()<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return redirect(post)                   # uses post.get_absolute_url()<br>&nbsp;&nbsp;&nbsp;&nbsp;return render(request, "blog/post_form.html", {"form": form})<br><br># Editing: pass the existing object<br>form = PostForm(request.POST or None, instance=post)</div>
          <p>A ModelForm copies the field types, <code>max_length</code>, <code>choices</code> and <code>unique</code> checks from the model. <code>commit=False</code> returns the unsaved object so you can set extra fields first. (If the form has many-to-many fields, call <code>form.save_m2m()</code> after <code>post.save()</code>.)</p>
        </div>
        <div class="lc-card">
          <h3>Form vs ModelForm</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>forms.Form</code></th><th><code>forms.ModelForm</code></th></tr></thead>
            <tbody>
              <tr><td>Fields come from</td><td>You declare each one</td><td>The model (<code>Meta.fields</code>)</td></tr>
              <tr><td>Saves to the database</td><td>No, you decide what to do</td><td>Yes, <code>form.save()</code></td></tr>
              <tr><td>Good for</td><td>Contact, search, login, filters</td><td>Create and edit pages for a model</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">1. valid: True | cleaned: {'name': 'Rahul Verma', 'email': 'rahul@example.com', 'age': 21, 'course': 'dj', 'referral': ''}<br>2. valid: False<br>&nbsp;&nbsp;&nbsp;name: This field is required.<br>&nbsp;&nbsp;&nbsp;email: Enter a valid email address.<br>&nbsp;&nbsp;&nbsp;age: Ensure this value is greater than or equal to 16.<br>3. non-field error: False Django batch is for students aged 18+.<br>4. rendered field: &lt;input type="email" name="email" maxlength="320" required id="id_email"&gt;<br>5. GET: form page, errors=0<br>6. POST valid: 302<br>7. POST without CSRF token: 403</div>
          <p>Line 1: the text <code>"21"</code> became the integer <code>21</code> and the name was tidied by <code>clean_name()</code>. Line 3: the error came from <code>clean()</code>, so it is a "non-field" error. Line 7: the test client normally skips CSRF checks; with <code>enforce_csrf_checks=True</code> it behaves like a real browser without a token and is refused.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Reading <code>request.POST["age"]</code> directly. It is an unvalidated string; use <code>form.cleaned_data["age"]</code>.</li>
            <li>Forgetting to <code>return data</code> (or the value) from <code>clean()</code> / <code>clean_&lt;field&gt;()</code>.</li>
            <li>Using <code>fields = "__all__"</code> on a ModelForm. New model fields (like <code>is_admin</code>) silently become editable. List fields explicitly.</li>
            <li>Rendering instead of redirecting after a successful POST, so a page refresh submits twice.</li>
            <li>Forgetting <code>enctype="multipart/form-data"</code> and <code>request.FILES</code> for file uploads (lesson 14).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a field <code>phone = forms.CharField(max_length=10)</code> and a <code>clean_phone()</code> method that raises <code>forms.ValidationError("Enter a 10-digit mobile number.")</code> unless the value is 10 digits (<code>value.isdigit()</code>). Test it with <code>"98765"</code> and <code>"9876543210"</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Browsers also check <code>required</code> and <code>type="email"</code>, but that is only for convenience. Anyone can skip it, so server-side validation with forms is what keeps your data clean.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.conf import settings

        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
                           MIDDLEWARE=["django.middleware.csrf.CsrfViewMiddleware"],
                           TEMPLATES=[{"BACKEND": "django.template.backends.django.DjangoTemplates"}])
        django.setup()

        from django import forms
        from django.http import HttpResponse
        from django.shortcuts import redirect
        from django.urls import path
        from django.test import Client

        class EnquiryForm(forms.Form):
            name = forms.CharField(max_length=50)
            email = forms.EmailField()
            age = forms.IntegerField(min_value=16)
            course = forms.ChoiceField(choices=[("py", "Python"), ("dj", "Django")])
            referral = forms.CharField(required=False)

            def clean_name(self):                          # one field
                return self.cleaned_data["name"].strip().title()

            def clean(self):                               # several fields together
                data = super().clean()
                if data.get("course") == "dj" and data.get("age", 99) < 18:
                    raise forms.ValidationError("Django batch is for students aged 18+.")
                return data

        good = EnquiryForm({"name": "  rahul verma ", "email": "rahul@example.com", "age": "21", "course": "dj"})
        print("1. valid:", good.is_valid(), "| cleaned:", good.cleaned_data)

        bad = EnquiryForm({"name": "", "email": "not-an-email", "age": "12", "course": "dj"})
        print("2. valid:", bad.is_valid())
        for field, errors in bad.errors.items():
            print(f"   {field}: {errors[0]}")

        young = EnquiryForm({"name": "Anu", "email": "anu@example.com", "age": "17", "course": "dj"})
        print("3. non-field error:", young.is_valid(), young.non_field_errors()[0])
        print("4. rendered field:", EnquiryForm()["email"])

        def enquire(request):                              # the usual view pattern
            form = EnquiryForm(request.POST or None)
            if request.method == "POST" and form.is_valid():
                return redirect("/thanks/")                # Post/Redirect/Get
            return HttpResponse(f"form page, errors={len(form.errors)}")

        urlpatterns = [path("enquire/", enquire)]
        data = {"name": "Meera", "email": "meera@example.com", "age": "25", "course": "py"}
        print("5. GET:", Client().get("/enquire/").content.decode())
        print("6. POST valid:", Client().post("/enquire/", data).status_code)
        print("7. POST without CSRF token:", Client(enforce_csrf_checks=True).post("/enquire/", data).status_code)
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Class-Based Views</h1>
        </div>
        <p class="lc-lead">Most pages do the same few things: show a template, list objects, or show one object. <strong>Class-based views</strong> (CBVs) package these patterns into classes. You set a few attributes, override a method or two, and Django does the rest.</p>
        <div class="lc-card">
          <h3>Function View vs Class-Based View</h3>
        <div class="lc-code"># Function-based view<br>def post_list(request):<br>&nbsp;&nbsp;&nbsp;&nbsp;posts = Post.objects.order_by("-views")<br>&nbsp;&nbsp;&nbsp;&nbsp;return render(request, "blog/post_list.html", {"posts": posts})<br><br># The same page as a class-based view<br>class PostListView(ListView):<br>&nbsp;&nbsp;&nbsp;&nbsp;model = Post<br>&nbsp;&nbsp;&nbsp;&nbsp;context_object_name = "posts"<br>&nbsp;&nbsp;&nbsp;&nbsp;ordering = ["-views"]<br><br># urls.py: call as_view() to turn the class into a view function<br>path("posts/", PostListView.as_view(), name="post-list")</div>
          <table class="lc-table">
            <thead><tr><th></th><th>Function-based</th><th>Class-based</th></tr></thead>
            <tbody>
              <tr><td>Easy to read for beginners</td><td>Yes, top to bottom</td><td>Need to know which methods exist</td></tr>
              <tr><td>Common patterns (list, detail)</td><td>You write them each time</td><td>Built in: a few lines</td></tr>
              <tr><td>Reuse</td><td>Decorators, helper functions</td><td>Inheritance and mixins</td></tr>
              <tr><td>Different HTTP methods</td><td><code>if request.method == "POST"</code></td><td>Separate <code>get()</code> and <code>post()</code> methods</td></tr>
            </tbody>
          </table>
          <p>Both are "correct" Django. Many teams use CBVs for standard pages and functions for unusual ones.</p>
        </div>
        <div class="lc-card">
          <h3>The Main Generic Display Views</h3>
          <table class="lc-table">
            <thead><tr><th>View</th><th>Use for</th><th>Default template</th><th>Context</th></tr></thead>
            <tbody>
              <tr><td><code>View</code></td><td>Your own <code>get()</code> / <code>post()</code></td><td>none</td><td>none</td></tr>
              <tr><td><code>TemplateView</code></td><td>Static pages (about, home)</td><td>set <code>template_name</code></td><td><code>extra_context</code> + <code>get_context_data()</code></td></tr>
              <tr><td><code>ListView</code></td><td>Many objects, with pagination</td><td><code>blog/post_list.html</code></td><td><code>object_list</code>, <code>post_list</code>, <code>page_obj</code></td></tr>
              <tr><td><code>DetailView</code></td><td>One object by <code>pk</code> or <code>slug</code></td><td><code>blog/post_detail.html</code></td><td><code>object</code>, <code>post</code></td></tr>
              <tr><td><code>RedirectView</code></td><td>Old URL to new URL</td><td>none</td><td>none</td></tr>
            </tbody>
          </table>
          <p>The default template name is <code>&lt;app&gt;/&lt;model&gt;_list.html</code> or <code>_detail.html</code>. <code>DetailView</code> returns a 404 automatically when the object does not exist.</p>
        </div>
        <div class="lc-card">
          <h3>Methods You Override Most</h3>
        <div class="lc-code">class PublishedPostList(ListView):<br>&nbsp;&nbsp;&nbsp;&nbsp;model = Post<br>&nbsp;&nbsp;&nbsp;&nbsp;paginate_by = 10                          # adds page_obj and paginator; use ?page=2<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def get_queryset(self):                   # which objects to show<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return Post.objects.filter(status="published").select_related("author")<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def get_context_data(self, **kwargs):     # extra template variables<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;context = super().get_context_data(**kwargs)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;context["total"] = Post.objects.count()<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return context</div>
          <p>Always call <code>super()</code> in <code>get_context_data()</code>, or you lose the variables the parent class adds. Inside a CBV, <code>self.request</code>, <code>self.args</code> and <code>self.kwargs</code> (URL parameters like <code>self.kwargs["slug"]</code>) are available in every method.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">/ping/                   200  pong<br>/about/                  200  About MyBlog<br>/posts/                  200  Page 1/2: Intro to CBVs; ListView Deep Dive; | Namaste!<br>/posts/?page=2           200  Page 2/2: Mixins; | Namaste!<br>/posts/intro-to-cbvs/    200  DETAIL: Intro to CBVs (300 views)<br>/posts/mixins/           404  (not found)</div>
          <ul class="lc-list">
            <li><code>paginate_by = 2</code> split three posts into two pages; <code>?page=2</code> chose the second.</li>
            <li><code>get_context_data()</code> added <code>greeting</code> to every page of the list.</li>
            <li>The "Mixins" post exists, but <code>get_queryset()</code> only allows posts with 100+ views, so <code>DetailView</code> returned 404. Overriding <code>get_queryset()</code> is also how you stop users seeing other people's private objects.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How a CBV Handles a Request</h3>
          <p><code>as_view()</code> creates a new instance for every request and calls <code>dispatch()</code>, which calls the method named after the HTTP verb: <code>get()</code>, <code>post()</code>, and so on. A verb with no method gets <code>405 Method Not Allowed</code>. For <code>ListView</code>, <code>get()</code> calls <code>get_queryset()</code>, then <code>get_context_data()</code>, then renders the template.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>path("posts/", PostListView)</code> without <code>.as_view()</code>.</li>
            <li>Forgetting <code>super().get_context_data(**kwargs)</code>, so <code>object_list</code> and <code>page_obj</code> disappear.</li>
            <li>Storing per-request data on the class (<code>PostListView.items = [...]</code>). Class attributes are shared by all users; use <code>self</code> inside methods.</li>
            <li>Putting the template in the wrong place: <code>ListView</code> for <code>Post</code> in app <code>blog</code> looks for <code>blog/post_list.html</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Change <code>paginate_by</code> to <code>1</code> and add <code>"/posts/?page=3"</code> to the URL list. Then add a view <code>class AllPostsDetail(DetailView)</code> with just <code>model = Post</code>, map it to <code>"all/&lt;slug:slug&gt;/"</code>, and check that <code>/all/mixins/</code> now returns 200.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The website <em>ccbv.co.uk</em> (Classy Class-Based Views) shows every attribute and method of each CBV and the order they run. Keep it open while you learn.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class BlogConfig(AppConfig):        # this file plays the role of the "blog" app
            name, label, path = "__main__", "blog", "."

        TEMPLATE_FILES = {
            "blog/post_list.html": "Page {{ page_obj.number }}/{{ paginator.num_pages }}: "
                                   "{% for p in posts %}{{ p.title }}; {% endfor %}| {{ greeting }}",
            "blog/post_detail.html": "DETAIL: {{ post.title }} ({{ post.views }} views)",
            "about.html": "About {{ site }}",
        }
        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            INSTALLED_APPS=["__main__.BlogConfig"], DEFAULT_AUTO_FIELD="django.db.models.BigAutoField",
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
            TEMPLATES=[{"BACKEND": "django.template.backends.django.DjangoTemplates",
                        "OPTIONS": {"loaders": [("django.template.loaders.locmem.Loader", TEMPLATE_FILES)]}}])
        django.setup()

        from django.db import models, connection
        from django.http import HttpResponse
        from django.urls import path
        from django.views import View
        from django.views.generic import TemplateView, ListView, DetailView
        from django.test import Client

        class Post(models.Model):
            title = models.CharField(max_length=100)
            slug = models.SlugField(unique=True)
            views = models.PositiveIntegerField(default=0)

        class PingView(View):                                   # plain View: one method per HTTP verb
            def get(self, request):
                return HttpResponse("pong")

        class PostListView(ListView):
            model = Post                                        # template: blog/post_list.html
            context_object_name = "posts"
            paginate_by = 2
            ordering = ["-views"]

            def get_context_data(self, **kwargs):               # add extra template variables
                context = super().get_context_data(**kwargs)
                context["greeting"] = "Namaste!"
                return context

        class PopularPostDetail(DetailView):
            model = Post                                        # looks up by <slug:slug>
            def get_queryset(self):                             # only posts with 100+ views
                return Post.objects.filter(views__gte=100)

        urlpatterns = [
            path("ping/", PingView.as_view()),
            path("about/", TemplateView.as_view(template_name="about.html", extra_context={"site": "MyBlog"})),
            path("posts/", PostListView.as_view()),
            path("posts/<slug:slug>/", PopularPostDetail.as_view()),
        ]

        with connection.schema_editor() as editor:
            editor.create_model(Post)
        for title, views in [("Intro to CBVs", 300), ("ListView Deep Dive", 120), ("Mixins", 40)]:
            Post.objects.create(title=title, slug=title.lower().replace(" ", "-"), views=views)

        c = Client()
        for url in ["/ping/", "/about/", "/posts/", "/posts/?page=2", "/posts/intro-to-cbvs/", "/posts/mixins/"]:
            r = c.get(url)
            body = r.content.decode() if r.status_code == 200 else "(not found)"
            print(f"{url:<24} {r.status_code}  {body}")
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Generic Editing Views</h1>
        </div>
        <p class="lc-lead">Create, edit and delete pages all follow the same steps: show a form, validate the POST, save, redirect. Django's <strong>editing views</strong> (<code>CreateView</code>, <code>UpdateView</code>, <code>DeleteView</code>, <code>FormView</code>) do all of this for you. Together with <code>ListView</code> and <code>DetailView</code> they give you full CRUD in a few lines.</p>
        <div class="lc-card">
          <h3>The Four Editing Views</h3>
          <table class="lc-table">
            <thead><tr><th>View</th><th>GET shows</th><th>Valid POST does</th><th>Default template</th></tr></thead>
            <tbody>
              <tr><td><code>CreateView</code></td><td>Empty ModelForm</td><td>Saves a new object, redirects</td><td><code>tasks/task_form.html</code></td></tr>
              <tr><td><code>UpdateView</code></td><td>Form filled with the object</td><td>Saves changes, redirects</td><td><code>tasks/task_form.html</code></td></tr>
              <tr><td><code>DeleteView</code></td><td>"Are you sure?" page</td><td>Deletes the object, redirects</td><td><code>tasks/task_confirm_delete.html</code></td></tr>
              <tr><td><code>FormView</code></td><td>Any <code>form_class</code></td><td>Calls <code>form_valid()</code>, redirects</td><td>set <code>template_name</code></td></tr>
            </tbody>
          </table>
          <p>An invalid POST re-displays the same template with the errors and status 200. Nothing is saved.</p>
        </div>
        <div class="lc-card">
          <h3>A Complete CRUD Set</h3>
        <div class="lc-code">from django.urls import reverse, reverse_lazy<br>from django.views.generic import CreateView, UpdateView, DeleteView<br><br>class Task(models.Model):<br>&nbsp;&nbsp;&nbsp;&nbsp;title = models.CharField(max_length=100)<br>&nbsp;&nbsp;&nbsp;&nbsp;done = models.BooleanField(default=False)<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def get_absolute_url(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return reverse("task-edit", args=[self.pk])<br><br>class TaskCreate(CreateView):<br>&nbsp;&nbsp;&nbsp;&nbsp;model = Task<br>&nbsp;&nbsp;&nbsp;&nbsp;fields = ["title", "done"]          # or form_class = TaskForm<br><br>class TaskUpdate(UpdateView):<br>&nbsp;&nbsp;&nbsp;&nbsp;model = Task<br>&nbsp;&nbsp;&nbsp;&nbsp;fields = ["title", "done"]<br><br>class TaskDelete(DeleteView):<br>&nbsp;&nbsp;&nbsp;&nbsp;model = Task<br>&nbsp;&nbsp;&nbsp;&nbsp;success_url = reverse_lazy("task-list")</div>
        </div>
        <div class="lc-card">
          <h3>Where Does It Redirect?</h3>
          <ol class="lc-list">
            <li>If the view has <code>success_url</code>, go there.</li>
            <li>Otherwise <code>CreateView</code>/<code>UpdateView</code> call the object's <code>get_absolute_url()</code>.</li>
            <li>If neither exists you get <code>ImproperlyConfigured</code>. <code>DeleteView</code> always needs <code>success_url</code> (the object is gone).</li>
          </ol>
          <p>Use <code>reverse_lazy()</code> for class attributes. When Python reads the class, the URLconf may not be loaded yet; <code>reverse_lazy</code> waits until the URL is actually needed. Inside methods, plain <code>reverse()</code> is fine.</p>
        </div>
        <div class="lc-card">
          <h3>Customising with form_valid()</h3>
          <p><code>form_valid(form)</code> runs only when the data is valid. It is the place to set fields the user must not choose, such as the owner:</p>
        <div class="lc-code">class TaskCreate(LoginRequiredMixin, CreateView):<br>&nbsp;&nbsp;&nbsp;&nbsp;model = Task<br>&nbsp;&nbsp;&nbsp;&nbsp;fields = ["title"]<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def form_valid(self, form):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;form.instance.owner = self.request.user     # set before saving<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;messages.success(self.request, "Task added.")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return super().form_valid(form)             # saves, then redirects<br><br>class TaskUpdate(LoginRequiredMixin, UpdateView):<br>&nbsp;&nbsp;&nbsp;&nbsp;model = Task<br>&nbsp;&nbsp;&nbsp;&nbsp;fields = ["title", "done"]<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def get_queryset(self):                         # users may edit only their own tasks<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return Task.objects.filter(owner=self.request.user)</div>
          <p>Other hooks: <code>form_invalid()</code>, <code>get_initial()</code> (starting values), <code>get_form_kwargs()</code> (pass extra arguments to the form) and <code>get_success_url()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">GET new                200  FORM errors=0 editing=new<br>POST new (blank)       200  FORM errors=1 editing=new<br>POST new (valid)       302  /tasks/1/edit/<br>GET edit               200  FORM errors=0 editing=Buy milk<br>POST edit              302  /tasks/1/edit/<br>&nbsp;&nbsp;&nbsp;in database: [('Buy milk', True)]<br>GET delete             200  Really delete 'Buy milk'?<br>POST delete            302  /tasks/new/<br>&nbsp;&nbsp;&nbsp;tasks left: 0</div>
          <p>The blank title failed validation and re-showed the form. The valid POST was capitalised by <code>form_valid()</code>, saved, and redirected to <code>get_absolute_url()</code>. A checkbox sends <code>"on"</code> when ticked, which the form turned into <code>True</code>. <code>DeleteView</code> deleted only on POST; the GET just asked for confirmation.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Setting both <code>fields</code> and <code>form_class</code>. Use one or the other.</li>
            <li>Using <code>reverse()</code> in a class attribute (<code>success_url = reverse("...")</code>). It can fail at import time; use <code>reverse_lazy()</code>.</li>
            <li>Deleting with a GET link. Search engines and link previews follow GET links. Always delete through a POST form.</li>
            <li>Forgetting <code>get_queryset()</code> (or a permission check) on update and delete views, so any user can edit anyone's object just by changing the id in the URL.</li>
            <li>Not calling <code>super().form_valid(form)</code>, so the object is never saved.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a <code>ListView</code> for <code>Task</code> with a template <code>"tasks/task_list.html": "{% for t in object_list %}{{ t }} {% endfor %}"</code>, map it to <code>"tasks/"</code> with name <code>"task-list"</code>, and change <code>TaskDelete.success_url</code> to <code>reverse_lazy("task-list")</code>. Create two tasks, delete one and print the list page.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>SuccessMessageMixin</code> from <code>django.contrib.messages.views</code> with <code>success_message = "%(title)s was saved"</code> to flash a message after saving, with no extra code.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class TasksConfig(AppConfig):       # this file plays the role of the "tasks" app
            name, label, path = "__main__", "tasks", "."

        TEMPLATE_FILES = {
            "tasks/task_form.html": "FORM errors={{ form.errors|length }} editing={{ object|default:'new' }}",
            "tasks/task_confirm_delete.html": "Really delete '{{ object }}'?",
        }
        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            INSTALLED_APPS=["__main__.TasksConfig"], DEFAULT_AUTO_FIELD="django.db.models.BigAutoField",
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
            TEMPLATES=[{"BACKEND": "django.template.backends.django.DjangoTemplates",
                        "OPTIONS": {"loaders": [("django.template.loaders.locmem.Loader", TEMPLATE_FILES)]}}])
        django.setup()

        from django.db import models, connection
        from django.urls import path, reverse, reverse_lazy
        from django.views.generic import CreateView, UpdateView, DeleteView
        from django.test import Client

        class Task(models.Model):
            title = models.CharField(max_length=100)
            done = models.BooleanField(default=False)
            def __str__(self):
                return self.title
            def get_absolute_url(self):                     # where CreateView/UpdateView go after saving
                return reverse("task-edit", args=[self.pk])

        class TaskCreate(CreateView):
            model = Task
            fields = ["title", "done"]                      # builds a ModelForm for you

            def form_valid(self, form):                     # runs only when the data is valid
                form.instance.title = form.instance.title.capitalize()
                return super().form_valid(form)             # saves and redirects

        class TaskUpdate(UpdateView):
            model = Task
            fields = ["title", "done"]

        class TaskDelete(DeleteView):
            model = Task
            success_url = reverse_lazy("task-new")          # lazy: URLs aren't loaded yet here

        urlpatterns = [
            path("tasks/new/", TaskCreate.as_view(), name="task-new"),
            path("tasks/<int:pk>/edit/", TaskUpdate.as_view(), name="task-edit"),
            path("tasks/<int:pk>/delete/", TaskDelete.as_view(), name="task-delete"),
        ]

        with connection.schema_editor() as editor:
            editor.create_model(Task)
        c = Client()
        def show(label, r):
            target = r["Location"] if r.status_code == 302 else r.content.decode()
            print(f"{label:<22} {r.status_code}  {target}")

        show("GET new", c.get("/tasks/new/"))
        show("POST new (blank)", c.post("/tasks/new/", {"title": ""}))
        show("POST new (valid)", c.post("/tasks/new/", {"title": "buy milk"}))
        show("GET edit", c.get("/tasks/1/edit/"))
        show("POST edit", c.post("/tasks/1/edit/", {"title": "Buy milk", "done": "on"}))
        print("   in database:", list(Task.objects.values_list("title", "done")))
        show("GET delete", c.get("/tasks/1/delete/"))
        show("POST delete", c.post("/tasks/1/delete/"))
        print("   tasks left:", Task.objects.count())
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Authentication and Permissions</h1>
        </div>
        <p class="lc-lead"><strong>Authentication</strong> answers "who are you?" (login). <strong>Authorisation</strong> answers "what are you allowed to do?" (permissions). <code>django.contrib.auth</code> gives you users, password hashing, login views, groups and permissions, all ready to use.</p>
        <div class="lc-card">
          <h3>Start Every Project with a Custom User Model</h3>
          <p>Django's docs strongly recommend creating your own user model <strong>before the first migrate</strong>, even if it adds nothing yet. Changing it later, once tables exist, is very hard.</p>
        <div class="lc-code"># accounts/models.py<br>from django.contrib.auth.models import AbstractUser<br>from django.db import models<br><br>class User(AbstractUser):<br>&nbsp;&nbsp;&nbsp;&nbsp;phone = models.CharField(max_length=15, blank=True)<br><br># settings.py<br>AUTH_USER_MODEL = "accounts.User"</div>
          <table class="lc-table">
            <thead><tr><th>Where</th><th>Refer to the user model with</th></tr></thead>
            <tbody>
              <tr><td><code>ForeignKey</code> / <code>OneToOneField</code> in models</td><td><code>settings.AUTH_USER_MODEL</code></td></tr>
              <tr><td>Views, forms, tests, scripts</td><td><code>User = get_user_model()</code></td></tr>
              <tr><td>Never</td><td><code>from django.contrib.auth.models import User</code> or a hard-coded <code>"auth.User"</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Users and Passwords</h3>
        <div class="lc-code">User = get_user_model()<br>u = User.objects.create_user("meera", "meera@example.com", "s3cret-pass")  # hashes the password<br>u.check_password("s3cret-pass")       # True<br>u.set_password("new-pass"); u.save()  # always use set_password, never u.password = ...<br>User.objects.create_superuser(...)    # or: python manage.py createsuperuser</div>
          <p>Django never stores the password itself, only a salted hash (PBKDF2 by default; Argon2 is a good upgrade with <code>pip install django[argon2]</code>). The editor's browser Python has no PBKDF2, so the starter uses the fast, insecure <code>MD5PasswordHasher</code>. <strong>Never use MD5 in a real project.</strong></p>
        </div>
        <div class="lc-card">
          <h3>Login and Logout</h3>
        <div class="lc-code"># urls.py: login, logout, password change and reset views, all built in<br>path("accounts/", include("django.contrib.auth.urls")),<br><br># settings.py<br>LOGIN_URL = "login"<br>LOGIN_REDIRECT_URL = "dashboard"<br>LOGOUT_REDIRECT_URL = "home"<br><br>{# templates/registration/login.html #}<br>&lt;form method="post"&gt;{% csrf_token %}{{ form.as_div }}&lt;button&gt;Log in&lt;/button&gt;&lt;/form&gt;<br><br>{# logout must be a POST form (Django 5.0+) #}<br>&lt;form method="post" action="{% url 'logout' %}"&gt;{% csrf_token %}&lt;button&gt;Log out&lt;/button&gt;&lt;/form&gt;</div>
          <p>In your own code, <code>authenticate(request, username=..., password=...)</code> checks the credentials and <code>login(request, user)</code> stores the user in the session. In every view and template, <code>request.user</code> / <code>{{ user }}</code> is the current user, or an <code>AnonymousUser</code> (check with <code>user.is_authenticated</code>).</p>
        </div>
        <div class="lc-card">
          <h3>Protecting Views</h3>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>Function view</th><th>Class-based view</th></tr></thead>
            <tbody>
              <tr><td>Must be logged in</td><td><code>@login_required</code></td><td><code>LoginRequiredMixin</code></td></tr>
              <tr><td>Must have a permission</td><td><code>@permission_required("blog.publish_post")</code></td><td><code>PermissionRequiredMixin</code></td></tr>
              <tr><td>Any custom rule</td><td><code>@user_passes_test(func)</code></td><td><code>UserPassesTestMixin</code> + <code>test_func()</code></td></tr>
              <tr><td>Whole site logged-in by default (5.1+)</td><td colspan="2"><code>LoginRequiredMiddleware</code>, then <code>@login_not_required</code> on public views</td></tr>
            </tbody>
          </table>
          <p>Put mixins <strong>first</strong>: <code>class PostCreate(LoginRequiredMixin, CreateView)</code>. An anonymous user is redirected to <code>LOGIN_URL?next=/the/page/</code>; a logged-in user without permission gets <code>403 Forbidden</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Permissions and Groups</h3>
          <p>For every model, <code>migrate</code> creates four permissions: <code>add_</code>, <code>change_</code>, <code>delete_</code> and <code>view_</code> (for example <code>blog.change_post</code>). Add your own in <code>Meta.permissions</code>. Give permissions to a <strong>group</strong> ("Editors") and put users in groups, instead of assigning them one user at a time.</p>
        <div class="lc-code">class Post(models.Model):<br>&nbsp;&nbsp;&nbsp;&nbsp;author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)<br>&nbsp;&nbsp;&nbsp;&nbsp;class Meta:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;permissions = [("publish_post", "Can publish posts")]<br><br>user.has_perm("blog.publish_post")      # "app_label.codename"</div>
          <p>Model permissions are about <em>types</em> of objects. "Only the author may edit this post" is an object rule: filter with <code>get_queryset()</code> or check <code>post.author == request.user</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">Password is hashed: True | check_password: True<br>Anonymous /dashboard/: 302 -&gt; /login/?next=/dashboard/<br>Login, wrong password: False<br>Login, right password: True<br>Logged-in /dashboard/: Hello meera, staff=False<br>/publish/ without permission: 403<br>has_perm('blog.publish_post'): True<br>/publish/ as an Editor: 200 You may publish!</div>
          <p>After adding Meera to the group, the starter loads her again from the database, because a user object caches its permissions the first time you ask.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Starting with the default <code>User</code> and needing a custom field later. Create <code>accounts.User</code> on day one.</li>
            <li>Writing <code>ForeignKey("auth.User", ...)</code> or importing <code>User</code> directly. Use <code>settings.AUTH_USER_MODEL</code> / <code>get_user_model()</code>.</li>
            <li>Setting <code>user.password = "abc"</code>. The raw text is saved and login fails. Use <code>set_password()</code> or <code>create_user()</code>.</li>
            <li>Putting <code>LoginRequiredMixin</code> after the view class: <code>class V(CreateView, LoginRequiredMixin)</code> does not protect the view.</li>
            <li>A logout link (<code>&lt;a href&gt;</code>). Since Django 5.0 <code>LogoutView</code> only accepts POST.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Create a second user <code>ravi</code> with <code>is_staff=True</code> (pass it to <code>create_user</code>). Log him in with a new <code>Client()</code> and request <code>/dashboard/</code> and <code>/publish/</code>. Predict the status codes first. Then write a <code>UserPassesTestMixin</code> view whose <code>test_func()</code> returns <code>self.request.user.is_staff</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In templates, show or hide buttons with <code>{% if perms.blog.publish_post %}</code>. Still check the permission in the view; hiding a button is not security.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class BlogConfig(AppConfig):        # this file plays the role of the "blog" app
            name, label, path = "__main__", "blog", "."

        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            INSTALLED_APPS=["django.contrib.contenttypes", "django.contrib.auth", "django.contrib.sessions",
                            "__main__.BlogConfig"],
            MIDDLEWARE=["django.contrib.sessions.middleware.SessionMiddleware",
                        "django.contrib.auth.middleware.AuthenticationMiddleware"],
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
            PASSWORD_HASHERS=["django.contrib.auth.hashers.MD5PasswordHasher"],  # editor only! see lesson
            LOGIN_URL="/login/", DEFAULT_AUTO_FIELD="django.db.models.BigAutoField")
        django.setup()

        from django.contrib.auth import get_user_model
        from django.contrib.auth.decorators import login_required
        from django.contrib.auth.mixins import PermissionRequiredMixin
        from django.contrib.auth.models import Group, Permission
        from django.contrib.contenttypes.models import ContentType
        from django.core.management import call_command
        from django.db import models
        from django.http import HttpResponse
        from django.urls import path
        from django.views import View
        from django.test import Client

        class Post(models.Model):
            author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
            title = models.CharField(max_length=100)
            class Meta:
                permissions = [("publish_post", "Can publish posts")]

        @login_required
        def dashboard(request):
            return HttpResponse(f"Hello {request.user.username}, staff={request.user.is_staff}")

        class PublishView(PermissionRequiredMixin, View):   # also sends anonymous users to login
            permission_required = "blog.publish_post"
            def get(self, request):
                return HttpResponse("You may publish!")

        urlpatterns = [path("dashboard/", dashboard), path("publish/", PublishView.as_view())]
        call_command("migrate", verbosity=0)                # tables for users, groups, permissions

        User = get_user_model()                              # never import User directly
        meera = User.objects.create_user("meera", "meera@example.com", "s3cret-pass")
        print("Password is hashed:", meera.password != "s3cret-pass", "| check_password:", meera.check_password("s3cret-pass"))

        # migrate normally creates permissions; we add the Meta one by hand here
        perm = Permission.objects.create(codename="publish_post", name="Can publish posts",
                                         content_type=ContentType.objects.get_for_model(Post))
        editors = Group.objects.create(name="Editors")
        editors.permissions.add(perm)

        c = Client()
        r = c.get("/dashboard/")
        print("Anonymous /dashboard/:", r.status_code, "->", r["Location"])
        print("Login, wrong password:", c.login(username="meera", password="nope"))
        print("Login, right password:", c.login(username="meera", password="s3cret-pass"))
        print("Logged-in /dashboard/:", c.get("/dashboard/").content.decode())
        print("/publish/ without permission:", c.get("/publish/").status_code)
        meera.groups.add(editors)
        meera = User.objects.get(pk=meera.pk)                # fresh object: permission cache is empty
        print("has_perm('blog.publish_post'):", meera.has_perm("blog.publish_post"))
        print("/publish/ as an Editor:", c.get("/publish/").status_code, c.get("/publish/").content.decode())
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Sessions, Cookies and Messages</h1>
        </div>
        <p class="lc-lead">HTTP forgets everything between requests. <strong>Sessions</strong> let your site remember a visitor (their cart, their login) across pages. <strong>Cookies</strong> store small values in the browser. The <strong>messages framework</strong> shows one-time notices like "Saved successfully" after a redirect.</p>
        <div class="lc-card">
          <h3>How Sessions Work</h3>
          <ol class="lc-list">
            <li>On the first visit, <code>SessionMiddleware</code> gives the browser a cookie called <code>sessionid</code> with a random key.</li>
            <li>The data itself (the cart) stays on the <strong>server</strong>, by default in the <code>django_session</code> database table.</li>
            <li>On each request, Django reads the cookie, loads the data into <code>request.session</code>, and saves it again if you changed it.</li>
          </ol>
        <div class="lc-code">request.session["cart"] = {"pen": 2}           # set (values must be JSON-serialisable)<br>cart = request.session.get("cart", {})          # get with a default<br>del request.session["cart"]                     # remove one key<br>request.session.flush()                         # delete everything (logout does this)<br>request.session.set_expiry(3600)                # expire after 1 hour of inactivity</div>
          <p>Django saves the session when you <em>assign</em> a key. If you change a list or dict inside the session in place (<code>request.session["cart"]["pen"] = 3</code>), Django cannot see it. Assign it again, or set <code>request.session.modified = True</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Session Engines</h3>
          <table class="lc-table">
            <thead><tr><th><code>SESSION_ENGINE</code></th><th>Data stored in</th><th>When to use</th></tr></thead>
            <tbody>
              <tr><td><code>...sessions.backends.db</code> (default)</td><td>Database table</td><td>Simple and reliable</td></tr>
              <tr><td><code>...sessions.backends.cache</code> / <code>cached_db</code></td><td>Cache (Redis), optionally backed by the DB</td><td>High-traffic sites</td></tr>
              <tr><td><code>...sessions.backends.signed_cookies</code></td><td>The cookie itself, signed</td><td>No server storage; data is readable by the user</td></tr>
            </tbody>
          </table>
          <p>With the database engine, run <code>python manage.py clearsessions</code> regularly (for example with cron) to delete expired sessions.</p>
        </div>
        <div class="lc-card">
          <h3>Cookies Directly</h3>
        <div class="lc-code">response.set_cookie("lang", "hi", max_age=365 * 24 * 3600, httponly=True, samesite="Lax")<br>request.COOKIES.get("lang", "en")<br><br>response.set_signed_cookie("theme", "dark")          # signed with SECRET_KEY<br>request.get_signed_cookie("theme", default="light")  # rejects a tampered value</div>
          <p>A cookie is visible to the user and can be edited in the browser. A <strong>signed</strong> cookie is still readable, but any change is detected. Never put secrets or trusted data (like "is_admin") in a plain cookie.</p>
        </div>
        <div class="lc-card">
          <h3>The Messages Framework</h3>
        <div class="lc-code">from django.contrib import messages<br><br>def save_profile(request):<br>&nbsp;&nbsp;&nbsp;&nbsp;...<br>&nbsp;&nbsp;&nbsp;&nbsp;messages.success(request, "Profile updated.")<br>&nbsp;&nbsp;&nbsp;&nbsp;return redirect("profile")<br><br>{# base.html: show and clear all pending messages #}<br>{% for message in messages %}<br>&nbsp;&nbsp;&lt;div class="alert alert-{{ message.tags }}"&gt;{{ message }}&lt;/div&gt;<br>{% endfor %}</div>
          <p>Levels: <code>debug</code>, <code>info</code>, <code>success</code>, <code>warning</code>, <code>error</code>. A message is stored until it is <strong>displayed once</strong>, then it is removed. That makes it perfect for Post/Redirect/Get: add the message, redirect, show it on the next page.</p>
        </div>
        <div class="lc-card">
          <h3>Sessions vs Messages vs Cookies</h3>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>Remember a cart or a multi-step form</td><td>Session</td></tr>
              <tr><td>"Order placed!" once after a redirect</td><td>Messages</td></tr>
              <tr><td>Remember dark mode for a year, even logged out</td><td>(Signed) cookie</td></tr>
              <tr><td>Data that must last forever (orders, profile)</td><td>A model in the database</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">Priya: {'cart': {'pen': 1}, 'total': 20, 'messages': ['success: Added pen to your cart.']}<br>Priya: {'cart': {'pen': 1, 'notebook': 1}, 'total': 80, 'messages': ['success: Added notebook to your cart.']}<br>Priya: {'cart': {'pen': 3, 'notebook': 1}, 'total': 120, 'messages': ['success: Added pen to your cart.', 'success: Added pen to your cart.', 'warning: That is a lot of pens!']}<br>Again:  [] (messages show only once)<br>Amit:   {'cart': {}, 'total': 0, 'messages': []} (his own empty session)<br>Browser holds only an ID: True 32 chars<br>Signed cookie value: dark | read back: dark</div>
          <p>Two <code>Client()</code> objects act like two browsers, so each has its own session. Messages waited across two requests until the cart page showed them, and then they were gone.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Changing a dict inside the session in place and wondering why it was not saved.</li>
            <li>Storing model objects or <code>Decimal</code> values in the session. The default serializer is JSON; store the <code>pk</code> or a string.</li>
            <li>Using a session for data that must survive logout, such as order history. Use a model.</li>
            <li>Forgetting <code>{% for message in messages %}</code> in the base template, so messages pile up and appear later on a random page.</li>
            <li>Removing <code>SessionMiddleware</code> or <code>MessageMiddleware</code> from <code>MIDDLEWARE</code>, which breaks login and messages.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a view <code>clear_cart(request)</code> that deletes the <code>"cart"</code> key (if present), adds <code>messages.info(request, "Cart emptied.")</code> and redirects to <code>/cart/</code>. Map it to <code>"cart/clear/"</code> and call it for Priya with <code>follow=True</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Django rotates the session key when a user logs in (<code>login()</code> calls <code>cycle_key()</code>). This blocks "session fixation" attacks, one more reason to use the built-in login instead of your own.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.conf import settings

        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            INSTALLED_APPS=["django.contrib.sessions", "django.contrib.messages"],
            MIDDLEWARE=["django.contrib.sessions.middleware.SessionMiddleware",
                        "django.contrib.messages.middleware.MessageMiddleware"],
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}})
        django.setup()

        from django.contrib import messages
        from django.core.management import call_command
        from django.http import HttpResponse, JsonResponse
        from django.shortcuts import redirect
        from django.urls import path
        from django.test import Client

        PRICES = {"pen": 20, "notebook": 60}

        def add_to_cart(request, item):
            cart = request.session.get("cart", {})          # read (default: empty dict)
            cart[item] = cart.get(item, 0) + 1
            request.session["cart"] = cart                    # assign again so Django saves it
            messages.success(request, f"Added {item} to your cart.")
            if cart[item] > 2:
                messages.warning(request, f"That is a lot of {item}s!")
            return redirect("/cart/")

        def view_cart(request):
            cart = request.session.get("cart", {})
            notes = [f"{m.level_tag}: {m.message}" for m in messages.get_messages(request)]
            total = sum(PRICES[i] * n for i, n in cart.items())
            return JsonResponse({"cart": cart, "total": total, "messages": notes})

        def set_theme(request):
            response = HttpResponse("theme saved")
            response.set_signed_cookie("theme", "dark", max_age=30 * 24 * 3600)   # tamper-proof cookie
            return response

        def read_theme(request):
            return HttpResponse(request.get_signed_cookie("theme", default="light"))

        urlpatterns = [path("add/<str:item>/", add_to_cart), path("cart/", view_cart),
                       path("theme/set/", set_theme), path("theme/", read_theme)]
        call_command("migrate", verbosity=0)                  # creates the django_session table

        priya, amit = Client(), Client()                      # two different browsers
        print("Priya:", priya.get("/add/pen/", follow=True).json())
        print("Priya:", priya.get("/add/notebook/", follow=True).json())
        priya.get("/add/pen/"); priya.get("/add/pen/")        # no follow: messages wait
        print("Priya:", priya.get("/cart/").json())
        print("Again: ", priya.get("/cart/").json()["messages"], "(messages show only once)")
        print("Amit:  ", amit.get("/cart/").json(), "(his own empty session)")
        print("Browser holds only an ID:", "sessionid" in priya.cookies, len(priya.cookies["sessionid"].value), "chars")
        priya.get("/theme/set/")
        print("Signed cookie value:", priya.cookies["theme"].value.split(":")[0], "| read back:", priya.get("/theme/").content.decode())
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Static Files and Media</h1>
        </div>
        <p class="lc-lead">Django separates two kinds of files. <strong>Static files</strong> are the CSS, JavaScript and images <em>you</em> write and ship with the code. <strong>Media files</strong> are files your <em>users</em> upload, such as profile photos and PDFs. They are configured, stored and served differently.</p>
        <div class="lc-card">
          <h3>Static vs Media</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Static</th><th>Media</th></tr></thead>
            <tbody>
              <tr><td>Who creates them</td><td>Developers</td><td>Users, at run time</td></tr>
              <tr><td>Examples</td><td><code>site.css</code>, <code>app.js</code>, logo</td><td>Avatars, resumes, product photos</td></tr>
              <tr><td>In Git?</td><td>Yes</td><td>No</td></tr>
              <tr><td>Settings</td><td><code>STATIC_URL</code>, <code>STATICFILES_DIRS</code>, <code>STATIC_ROOT</code></td><td><code>MEDIA_URL</code>, <code>MEDIA_ROOT</code></td></tr>
              <tr><td>In templates</td><td><code>{% static 'css/site.css' %}</code></td><td><code>{{ user.avatar.url }}</code></td></tr>
              <tr><td>Storage setting</td><td><code>STORAGES["staticfiles"]</code></td><td><code>STORAGES["default"]</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Static Files Settings</h3>
        <div class="lc-code">STATIC_URL = "static/"                     # URL prefix<br>STATICFILES_DIRS = [BASE_DIR / "static"]   # project-wide files (apps also use app/static/)<br>STATIC_ROOT = BASE_DIR / "staticfiles"     # collectstatic copies everything here<br><br>{% load static %}<br>&lt;link rel="stylesheet" href="{% static 'css/site.css' %}"&gt;<br>&lt;img src="{% static 'img/logo.png' %}" alt="Logo"&gt;</div>
          <p>During development, <code>runserver</code> serves static files for you (with <code>DEBUG=True</code> and <code>django.contrib.staticfiles</code> installed). For production, run <code>python manage.py collectstatic</code>: it gathers the files from every app and <code>STATICFILES_DIRS</code> into <code>STATIC_ROOT</code>, where a fast server can send them.</p>
        </div>
        <div class="lc-card">
          <h3>The STORAGES Setting</h3>
          <p>Since Django 4.2, one setting chooses where both kinds of files are stored. (The old <code>DEFAULT_FILE_STORAGE</code> and <code>STATICFILES_STORAGE</code> settings were removed in Django 5.1; don't use them.)</p>
        <div class="lc-code">STORAGES = {<br>&nbsp;&nbsp;&nbsp;&nbsp;"default": {                                # media uploads<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"BACKEND": "django.core.files.storage.FileSystemStorage",<br>&nbsp;&nbsp;&nbsp;&nbsp;},<br>&nbsp;&nbsp;&nbsp;&nbsp;"staticfiles": {                            # static files<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"BACKEND": "django.contrib.staticfiles.storage.ManifestStaticFilesStorage",<br>&nbsp;&nbsp;&nbsp;&nbsp;},<br>}</div>
          <p><code>ManifestStaticFilesStorage</code> adds a content hash to each file name (<code>site.51339dd0a3db.css</code>). When the file changes, the name changes, so browsers can cache files for a year and still get updates at once. For cloud storage (Amazon S3, Google Cloud), install <code>django-storages</code> and point <code>"default"</code> at its backend.</p>
        </div>
        <div class="lc-card">
          <h3>Serving Static Files in Production: WhiteNoise</h3>
        <div class="lc-code">pip install whitenoise<br><br>MIDDLEWARE = [<br>&nbsp;&nbsp;&nbsp;&nbsp;"django.middleware.security.SecurityMiddleware",<br>&nbsp;&nbsp;&nbsp;&nbsp;"whitenoise.middleware.WhiteNoiseMiddleware",       # right after SecurityMiddleware<br>&nbsp;&nbsp;&nbsp;&nbsp;...<br>]<br>STORAGES["staticfiles"] = {"BACKEND": "whitenoise.storage.CompressedManifestStaticFilesStorage"}</div>
          <p>WhiteNoise lets your Django app server send compressed, cached static files itself, which is enough for most sites. Alternatives are Nginx or a CDN.</p>
        </div>
        <div class="lc-card">
          <h3>Media Uploads</h3>
        <div class="lc-code">MEDIA_URL = "media/"<br>MEDIA_ROOT = BASE_DIR / "media"<br><br>class Profile(models.Model):<br>&nbsp;&nbsp;&nbsp;&nbsp;user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)<br>&nbsp;&nbsp;&nbsp;&nbsp;resume = models.FileField(upload_to="resumes/")<br>&nbsp;&nbsp;&nbsp;&nbsp;avatar = models.ImageField(upload_to="avatars/%Y/%m/", blank=True)   # needs Pillow<br><br>form = ProfileForm(request.POST, request.FILES)     # files arrive in request.FILES<br><br>&lt;form method="post" enctype="multipart/form-data"&gt;{% csrf_token %} ... &lt;/form&gt;<br><br># urls.py, development only<br>from django.conf.urls.static import static<br>urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)</div>
          <p>The database column stores only the file <em>name</em> (<code>avatars/2026/09/me.png</code>); the file lives in the storage. <code>ImageField</code> needs <code>pip install Pillow</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">1. collectstatic:<br><br>1 static file copied to '/tmp/site/staticfiles', 1 post-processed.<br>&nbsp;&nbsp;&nbsp;files in STATIC_ROOT: ['site.51339dd0a3db.css', 'site.css']<br>2. {% static %} -&gt; &lt;link rel="stylesheet" href="/static/css/site.51339dd0a3db.css"&gt;<br>3. saved upload as: avatars/avatar.png<br>&nbsp;&nbsp;&nbsp;URL for templates: /media/avatars/avatar.png<br>&nbsp;&nbsp;&nbsp;path on disk:      /tmp/site/media/avatars/avatar.png<br>4. same name again -&gt; True (Django adds a random suffix)</div>
          <p>The <code>{% static %}</code> tag returned the <em>hashed</em> file name automatically because of <code>ManifestStaticFilesStorage</code>. The second upload with the same name did not overwrite the first; the storage picked a new unique name.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Mixing up the settings: <code>STATIC_ROOT</code> is the output of <code>collectstatic</code>, not where you write your CSS. Put your files in <code>STATICFILES_DIRS</code> or <code>app/static/</code>.</li>
            <li>Using the <code>static()</code> URL helper in production. It only works with <code>DEBUG=True</code> and is slow; use WhiteNoise, Nginx or cloud storage.</li>
            <li>Forgetting <code>enctype="multipart/form-data"</code> or <code>request.FILES</code>, so uploads arrive empty.</li>
            <li>Trusting uploaded files: limit the size and type, and never serve user uploads from the same place as your code.</li>
            <li>Hard-coding <code>/static/css/site.css</code> in templates instead of <code>{% static %}</code>, which breaks hashed names and CDNs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, write a second file <code>/tmp/site/assets/js/app.js</code> before <code>settings.configure()</code> (create the folder with <code>os.makedirs</code>). Run again: how many files does <code>collectstatic</code> copy, and what URL does <code>{% static 'js/app.js' %}</code> give?</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>ManifestStaticFilesStorage</code> (with <code>DEBUG=False</code>) raises an error when a page refers to a static file that <code>collectstatic</code> did not collect. That is a feature: a missing file shows up as a clear error in testing, not as a silently broken page.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import os
        import django
        from django.conf import settings

        os.makedirs("/tmp/site/assets/css", exist_ok=True)               # BASE_DIR / "static" in a real project
        with open("/tmp/site/assets/css/site.css", "w") as f:
            f.write("body { font-family: sans-serif; }")

        settings.configure(
            DEBUG=False, SECRET_KEY="lesson-only", USE_TZ=True,
            INSTALLED_APPS=["django.contrib.staticfiles"],
            STATIC_URL="static/",                        # URL prefix for CSS/JS/images
            STATICFILES_DIRS=["/tmp/site/assets"],       # where YOUR static files live
            STATIC_ROOT="/tmp/site/staticfiles",         # where collectstatic copies everything
            MEDIA_URL="media/",                          # URL prefix for user uploads
            MEDIA_ROOT="/tmp/site/media",                # folder for user uploads
            STORAGES={
                "default": {"BACKEND": "django.core.files.storage.FileSystemStorage"},
                "staticfiles": {"BACKEND": "django.contrib.staticfiles.storage.ManifestStaticFilesStorage"},
            },
            TEMPLATES=[{"BACKEND": "django.template.backends.django.DjangoTemplates"}],
        )
        django.setup()

        from django.core.files.base import ContentFile
        from django.core.files.storage import default_storage
        from django.core.management import call_command
        from django.template import Template, Context

        print("1. collectstatic:")
        call_command("collectstatic", interactive=False, verbosity=1)
        print("   files in STATIC_ROOT:", sorted(os.listdir("/tmp/site/staticfiles/css")))

        html = Template('{% load static %}<link rel="stylesheet" href="{% static \'css/site.css\' %}">')
        print("2. {% static %} ->", html.render(Context()))

        # Media: what a FileField does when a user uploads avatar.png
        name = default_storage.save("avatars/avatar.png", ContentFile(b"fake image bytes"))
        print("3. saved upload as:", name)
        print("   URL for templates:", default_storage.url(name))
        print("   path on disk:     ", default_storage.path(name))
        name2 = default_storage.save("avatars/avatar.png", ContentFile(b"another"))
        print("4. same name again ->", name2.startswith("avatars/avatar_"), "(Django adds a random suffix)")
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Middleware and Signals</h1>
        </div>
        <p class="lc-lead"><strong>Middleware</strong> is code that wraps <em>every</em> request and response, like security checks at the gate of a building. <strong>Signals</strong> let one part of Django announce "something happened" (a user was saved, a request finished) so other code can react without being called directly.</p>
        <div class="lc-card">
          <h3>The Onion: How Middleware Runs</h3>
          <p>Django runs the <code>MIDDLEWARE</code> list <strong>top to bottom</strong> on the way in, calls the view, then runs back <strong>bottom to top</strong> on the way out. Any middleware can stop early by returning a response itself; the view then never runs.</p>
          <div class="lc-flow">
            <div class="lc-flow-step">Request</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Security<br><small>1st in</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Session<br><small>2nd in</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Auth<br><small>3rd in</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">View</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Response<br><small>out in reverse order</small></div>
          </div>
        </div>
        <div class="lc-card">
          <h3>The Default MIDDLEWARE List</h3>
          <table class="lc-table">
            <thead><tr><th>Middleware</th><th>Job</th></tr></thead>
            <tbody>
              <tr><td><code>SecurityMiddleware</code></td><td>HTTPS redirect, HSTS and other security headers</td></tr>
              <tr><td><code>SessionMiddleware</code></td><td>Loads and saves <code>request.session</code></td></tr>
              <tr><td><code>CommonMiddleware</code></td><td>Adds a missing trailing slash (<code>APPEND_SLASH</code>)</td></tr>
              <tr><td><code>CsrfViewMiddleware</code></td><td>Rejects POSTs without a valid CSRF token</td></tr>
              <tr><td><code>AuthenticationMiddleware</code></td><td>Sets <code>request.user</code> (needs the session, so it comes after it)</td></tr>
              <tr><td><code>MessageMiddleware</code></td><td>Enables the messages framework</td></tr>
              <tr><td><code>XFrameOptionsMiddleware</code></td><td>Stops other sites putting your pages in an iframe (clickjacking)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Writing Your Own Middleware</h3>
        <div class="lc-code"># myproject/middleware.py<br>import time<br><br>class TimingMiddleware:<br>&nbsp;&nbsp;&nbsp;&nbsp;def __init__(self, get_response):        # once, when the server starts<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.get_response = get_response<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def __call__(self, request):             # on every request<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;start = time.perf_counter()<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = self.get_response(request)          # next middleware, then the view<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response["X-Time-Ms"] = f"{(time.perf_counter() - start) * 1000:.1f}"<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return response<br><br># settings.py<br>MIDDLEWARE = [..., "myproject.middleware.TimingMiddleware"]</div>
          <p>Optional hooks: <code>process_view()</code> (just before the view is called), <code>process_exception()</code> (the view raised an error) and <code>process_template_response()</code>. A simple function that takes <code>get_response</code> and returns an inner function also works; the starter shows both styles.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">Normal request:<br>&nbsp;&nbsp;[log] before view: GET /<br>&nbsp;&nbsp;[view] home() runs<br>&nbsp;&nbsp;[log] after view:  status 200<br>&nbsp;&nbsp;[signal] request_finished<br>&nbsp;&nbsp;=&gt; 200 'Hello' X-Served-By=my-django<br><br>Bot request:<br>&nbsp;&nbsp;[log] before view: GET /<br>&nbsp;&nbsp;[bots] blocked, the view never runs<br>&nbsp;&nbsp;[log] after view:  status 403<br>&nbsp;&nbsp;[signal] request_finished<br>&nbsp;&nbsp;=&gt; 403 'No bots' X-Served-By=my-django<br><br>Error request:<br>&nbsp;&nbsp;[log] before view: GET /broken/<br>&nbsp;&nbsp;[bots] caught ValueError: database is down<br>&nbsp;&nbsp;[log] after view:  status 500<br>&nbsp;&nbsp;[signal] request_finished<br>&nbsp;&nbsp;=&gt; 500 'Sorry, something went wrong' X-Served-By=my-django</div>
          <p>Even when <code>BlockBotsMiddleware</code> stopped the request, the outer <code>log_middleware</code> still ran its "after" part and added the header. That is the onion at work.</p>
        </div>
        <div class="lc-card">
          <h3>Signals</h3>
        <div class="lc-code"># accounts/signals.py<br>from django.conf import settings<br>from django.db.models.signals import post_save<br>from django.dispatch import receiver<br><br>@receiver(post_save, sender=settings.AUTH_USER_MODEL)<br>def create_profile(sender, instance, created, **kwargs):<br>&nbsp;&nbsp;&nbsp;&nbsp;if created:                                  # only for new users<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Profile.objects.create(user=instance)<br><br># accounts/apps.py: import the module so the receivers are registered<br>class AccountsConfig(AppConfig):<br>&nbsp;&nbsp;&nbsp;&nbsp;name = "accounts"<br>&nbsp;&nbsp;&nbsp;&nbsp;def ready(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;from . import signals</div>
          <table class="lc-table">
            <thead><tr><th>Signal</th><th>Sent when</th></tr></thead>
            <tbody>
              <tr><td><code>pre_save</code> / <code>post_save</code></td><td>Before / after <code>model.save()</code></td></tr>
              <tr><td><code>pre_delete</code> / <code>post_delete</code></td><td>Before / after deleting an object</td></tr>
              <tr><td><code>m2m_changed</code></td><td>A many-to-many relation changes</td></tr>
              <tr><td><code>request_started</code> / <code>request_finished</code></td><td>Django starts / finishes an HTTP request</td></tr>
              <tr><td><code>user_logged_in</code> / <code>user_logged_out</code></td><td>Login and logout (from <code>django.contrib.auth.signals</code>)</td></tr>
            </tbody>
          </table>
          <p>Use signals for code in <em>another app</em> that must react to an event. Inside your own app, a direct function call or an overridden <code>save()</code> is easier to follow. Note that <code>QuerySet.update()</code> and <code>bulk_create()</code> do <strong>not</strong> send <code>post_save</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Slow work (database queries, API calls) in middleware. It runs on every request, including static files served by Django.</li>
            <li>Wrong order: a middleware that uses <code>request.user</code> must come after <code>AuthenticationMiddleware</code>.</li>
            <li>Forgetting to <code>return response</code> from middleware.</li>
            <li>Receivers that never run because the <code>signals</code> module is never imported. Import it in <code>AppConfig.ready()</code>.</li>
            <li>Hiding important business logic in signals, so nobody can find why a record changed.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a third middleware that sets <code>request.start_note = "hi"</code> before calling <code>get_response</code>, and change <code>home()</code> to return <code>HttpResponse(request.start_note)</code>. Put it at the end of <code>MIDDLEWARE</code>. What happens to the Bot request, and why does it not reach your new middleware?</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you only need something for a few views, use a decorator or a mixin instead of middleware. Middleware is for rules that truly apply to the whole site.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.conf import settings

        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            MIDDLEWARE=[f"{__name__}.log_middleware", f"{__name__}.BlockBotsMiddleware"])  # order matters
        django.setup()

        from django.core.signals import request_finished
        from django.dispatch import receiver
        from django.http import HttpResponse, HttpResponseForbidden
        from django.urls import path
        from django.test import Client

        def log_middleware(get_response):                 # function-style middleware
            def middleware(request):
                print(f"  [log] before view: {request.method} {request.path}")
                response = get_response(request)          # calls the next middleware / the view
                response["X-Served-By"] = "my-django"     # change every response
                print(f"  [log] after view:  status {response.status_code}")
                return response
            return middleware

        class BlockBotsMiddleware:                        # class-style middleware
            def __init__(self, get_response):             # runs once, at start-up
                self.get_response = get_response

            def __call__(self, request):                  # runs on every request
                if "BadBot" in request.headers.get("User-Agent", ""):
                    print("  [bots] blocked, the view never runs")
                    return HttpResponseForbidden("No bots")   # short-circuit
                return self.get_response(request)

            def process_exception(self, request, exception):   # the view raised an error
                print(f"  [bots] caught {type(exception).__name__}: {exception}")
                return HttpResponse("Sorry, something went wrong", status=500)

        @receiver(request_finished)                       # a signal: "tell me when X happens"
        def on_finished(sender, **kwargs):
            print("  [signal] request_finished")

        def home(request):
            print("  [view] home() runs")
            return HttpResponse("Hello")

        def broken(request):
            raise ValueError("database is down")

        urlpatterns = [path("", home), path("broken/", broken)]

        c = Client()
        for label, url, agent in [("Normal", "/", "Firefox"), ("Bot", "/", "BadBot/1.0"), ("Error", "/broken/", "Firefox")]:
            print(f"{label} request:")
            r = c.get(url, headers={"user-agent": agent})
            print(f"  => {r.status_code} {r.content.decode()!r} X-Served-By={r.get('X-Served-By')}\n")
      PYTHON
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Testing Django Apps</h1>
        </div>
        <p class="lc-lead">Automated tests check that your app still works every time you change it. Django's test tools create a separate <strong>test database</strong>, give you a test <strong>Client</strong> to make requests, and roll back every test so they never affect each other.</p>
        <div class="lc-card">
          <h3>Running Tests</h3>
        <div class="lc-code">$ python manage.py test                  # every tests.py / test*.py in your apps<br>$ python manage.py test blog             # one app<br>$ python manage.py test blog.tests.PostViewTests.test_draft_returns_404   # one test<br>$ python manage.py test --parallel       # use all CPU cores<br>Found 4 test(s).<br>Creating test database for alias 'default'...<br>....<br>----------------------------------------------------------------------<br>Ran 4 tests in 0.031s<br><br>OK<br>Destroying test database for alias 'default'...</div>
          <p>Test methods must start with <code>test</code>. The test database is created empty and deleted at the end, so your real data is never touched.</p>
        </div>
        <div class="lc-card">
          <h3>Which Test Class?</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Database</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>SimpleTestCase</code></td><td>Not allowed</td><td>Pure functions, forms without models, templates</td></tr>
              <tr><td><code>TestCase</code></td><td>Yes, each test inside a transaction that is rolled back</td><td>Most tests: models, views, forms</td></tr>
              <tr><td><code>TransactionTestCase</code></td><td>Yes, tables emptied after each test (slower)</td><td>Code that depends on real commits, <code>on_commit()</code> hooks</td></tr>
              <tr><td><code>LiveServerTestCase</code></td><td>Yes, plus a real running server</td><td>Browser tests with Playwright or Selenium</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A Typical Test File</h3>
        <div class="lc-code"># blog/tests.py<br>from django.contrib.auth import get_user_model<br>from django.test import TestCase<br>from django.urls import reverse<br>from .models import Post<br><br>class PostViewTests(TestCase):<br>&nbsp;&nbsp;&nbsp;&nbsp;@classmethod<br>&nbsp;&nbsp;&nbsp;&nbsp;def setUpTestData(cls):               # created once for the whole class: fast<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cls.user = get_user_model().objects.create_user("asha", password="pw")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cls.post = Post.objects.create(title="Live post", published=True, author=cls.user)<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def test_list_shows_post(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = self.client.get(reverse("blog:post-list"))<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.assertEqual(response.status_code, 200)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.assertContains(response, "Live post")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.assertTemplateUsed(response, "blog/post_list.html")<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def test_create_requires_login(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = self.client.get(reverse("blog:post-create"))<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.assertRedirects(response, "/accounts/login/?next=/blog/new/")<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def test_logged_in_user_can_create(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.client.force_login(self.user)       # no password check needed<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.client.post(reverse("blog:post-create"), {"title": "New"})<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.assertTrue(Post.objects.filter(title="New").exists())</div>
        </div>
        <div class="lc-card">
          <h3>Useful Assertions</h3>
          <table class="lc-table">
            <thead><tr><th>Assertion</th><th>Checks</th></tr></thead>
            <tbody>
              <tr><td><code>assertEqual(a, b)</code>, <code>assertTrue(x)</code></td><td>Plain values</td></tr>
              <tr><td><code>assertContains(response, "text")</code></td><td>Status 200 and the text is in the page</td></tr>
              <tr><td><code>assertNotContains(response, "text")</code></td><td>Text is not in the page</td></tr>
              <tr><td><code>assertRedirects(response, url)</code></td><td>A redirect to that URL</td></tr>
              <tr><td><code>assertTemplateUsed(response, name)</code></td><td>Which template was rendered</td></tr>
              <tr><td><code>assertFormError(form, "field", "message")</code></td><td>A form error</td></tr>
              <tr><td><code>assertJSONEqual(content, data)</code></td><td>JSON responses (API tests)</td></tr>
              <tr><td><code>assertNumQueries(3)</code></td><td>Exactly 3 SQL queries ran (catches N+1, lesson 18)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <p>The starter holds the code and its tests in one file and runs them with Python's <code>unittest</code> runner, which is what <code>manage.py test</code> uses underneath. One test is wrong on purpose so you can see a failure:</p>
        <div class="lc-code">test_slug_title (__main__.SlugTests.test_slug_title) ... ok<br>test_buggy_expectation (__main__.PostViewTests.test_buggy_expectation) ... FAIL<br>test_draft_returns_404 (__main__.PostViewTests.test_draft_returns_404) ... ok<br>test_published_post_is_shown (__main__.PostViewTests.test_published_post_is_shown) ... ok<br>FAIL: test_buggy_expectation (__main__.PostViewTests.test_buggy_expectation)<br>AssertionError: 2 != 3<br><br>Ran 4 tests: 1 failure(s), 0 error(s)</div>
          <p>Only two posts exist, because <code>setUpTestData</code> created two and nothing else leaked in. Always read the failure message: it shows the actual value first and the expected value second.</p>
        </div>
        <div class="lc-card">
          <h3>What to Test</h3>
          <ul class="lc-list">
            <li><strong>Views:</strong> status codes, redirects, who can and cannot see a page (permissions are the most important tests).</li>
            <li><strong>Forms:</strong> valid data passes, bad data gives the right error.</li>
            <li><strong>Models:</strong> custom methods, managers, <code>clean()</code> rules.</li>
            <li>Not Django itself: you do not need to test that <code>CharField</code> saves text.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Test methods not starting with <code>test</code>, so they silently never run.</li>
            <li>Creating data in <code>setUp()</code> for every test when <code>setUpTestData()</code> would create it once.</li>
            <li>Tests that depend on each other's order or on today's date. Each test must work alone.</li>
            <li>Calling real external APIs (payment, SMS) in tests. Replace them with <code>unittest.mock.patch</code>.</li>
            <li>Only testing the "happy path". Also test logged-out users, wrong owners and invalid input.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Fix <code>test_buggy_expectation</code> so it expects <code>2</code>. Then add a test <code>test_missing_post_returns_404</code> that requests <code>/posts/999/</code> and checks for status <code>404</code>. Run it and make sure you see <code>0 failure(s)</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Install <code>coverage</code> and run <code>coverage run manage.py test</code> then <code>coverage report</code> to see which lines your tests never execute. Popular extras: <code>pytest-django</code> for pytest-style tests and <code>factory_boy</code> for test data.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io, unittest
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class BlogConfig(AppConfig):        # this file plays the role of the "blog" app
            name, label, path = "__main__", "blog", "."

        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, INSTALLED_APPS=["__main__.BlogConfig"],
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
            DEFAULT_AUTO_FIELD="django.db.models.BigAutoField")
        django.setup()

        from django.db import connection, models
        from django.http import JsonResponse
        from django.shortcuts import get_object_or_404
        from django.test import TestCase, SimpleTestCase
        from django.test.utils import setup_test_environment
        from django.urls import path

        class Post(models.Model):                          # --- code under test ---
            title = models.CharField(max_length=100)
            published = models.BooleanField(default=False)
            def slug_title(self):
                return self.title.lower().replace(" ", "-")

        def post_detail(request, pk):
            post = get_object_or_404(Post, pk=pk, published=True)
            return JsonResponse({"title": post.title})

        urlpatterns = [path("posts/<int:pk>/", post_detail)]

        class SlugTests(SimpleTestCase):                   # --- tests (blog/tests.py) ---
            def test_slug_title(self):                     # no database needed
                self.assertEqual(Post(title="Hello Django World").slug_title(), "hello-django-world")

        class PostViewTests(TestCase):
            @classmethod
            def setUpTestData(cls):                        # runs once; each test is rolled back
                cls.live = Post.objects.create(title="Live post", published=True)
                cls.draft = Post.objects.create(title="Secret draft")

            def test_published_post_is_shown(self):
                response = self.client.get(f"/posts/{self.live.pk}/")
                self.assertEqual(response.status_code, 200)
                self.assertJSONEqual(response.content, {"title": "Live post"})

            def test_draft_returns_404(self):
                self.assertEqual(self.client.get(f"/posts/{self.draft.pk}/").status_code, 404)

            def test_buggy_expectation(self):              # this test is WRONG on purpose
                self.assertEqual(Post.objects.count(), 3)

        setup_test_environment()                           # manage.py test does these steps for you
        with connection.schema_editor() as editor:
            editor.create_model(Post)
        suite = unittest.defaultTestLoader.loadTestsFromNames(["__main__.SlugTests", "__main__.PostViewTests"])
        out = io.StringIO()
        result = unittest.TextTestRunner(stream=out, verbosity=2).run(suite)
        lines = out.getvalue().splitlines()
        print("\n".join(l for l in lines if " ... " in l or l.startswith(("AssertionError", "FAIL:"))))
        print(f"\nRan {result.testsRun} tests: {len(result.failures)} failure(s), {len(result.errors)} error(s)")
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">REST APIs and Django REST Framework</h1>
        </div>
        <p class="lc-lead">Mobile apps and JavaScript front ends (React, Vue) do not want HTML pages; they want <strong>JSON</strong>. A <strong>REST API</strong> exposes your data as URLs that accept HTTP methods and return JSON. You can build one in plain Django, and <strong>Django REST Framework (DRF)</strong> makes it faster and safer for real projects.</p>
        <div class="lc-card">
          <h3>REST in One Table</h3>
          <table class="lc-table">
            <thead><tr><th>Method + URL</th><th>Action</th><th>Success status</th></tr></thead>
            <tbody>
              <tr><td><code>GET /api/books/</code></td><td>List books</td><td><code>200 OK</code></td></tr>
              <tr><td><code>POST /api/books/</code></td><td>Create a book</td><td><code>201 Created</code></td></tr>
              <tr><td><code>GET /api/books/1/</code></td><td>Get one book</td><td><code>200 OK</code></td></tr>
              <tr><td><code>PUT</code> / <code>PATCH /api/books/1/</code></td><td>Replace / partly update</td><td><code>200 OK</code></td></tr>
              <tr><td><code>DELETE /api/books/1/</code></td><td>Delete</td><td><code>204 No Content</code></td></tr>
            </tbody>
          </table>
          <p>Errors use status codes too: <code>400</code> bad input, <code>401</code> not logged in, <code>403</code> not allowed, <code>404</code> not found, <code>405</code> method not allowed.</p>
        </div>
        <div class="lc-card">
          <h3>Plain Django: JsonResponse</h3>
        <div class="lc-code">@require_http_methods(["GET", "POST"])<br>def book_list(request):<br>&nbsp;&nbsp;&nbsp;&nbsp;if request.method == "GET":<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return JsonResponse({"results": [to_dict(b) for b in Book.objects.order_by("id")]})<br>&nbsp;&nbsp;&nbsp;&nbsp;form = BookForm(json.loads(request.body))        # validate JSON input with a ModelForm<br>&nbsp;&nbsp;&nbsp;&nbsp;if not form.is_valid():<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return JsonResponse({"errors": form.errors}, status=400)<br>&nbsp;&nbsp;&nbsp;&nbsp;return JsonResponse(to_dict(form.save()), status=201)</div>
          <p>This works and is fine for a few endpoints (the starter runs a full version). But you must write the conversion to JSON, the input parsing, authentication, pagination, and error formats yourself for every endpoint.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">POST   /api/books/      201  {'id': 1, 'title': 'Wings of Fire', 'price': '299.00'}<br>POST   /api/books/      201  {'id': 2, 'title': 'Godaan', 'price': '150.50'}<br>POST   /api/books/      400  {'errors': {'title': ['This field is required.'], 'price': ['Enter a number.']}}<br>GET    /api/books/      200  {'results': [{'id': 1, ...}, {'id': 2, ...}]}<br>GET    /api/books/1/    200  {'id': 1, 'title': 'Wings of Fire', 'price': '299.00'}<br>DELETE /api/books/1/    204<br>GET    /api/books/1/    404<br>PUT    /api/books/2/    405</div>
          <p>The price is sent as a string (<code>"299.00"</code>) because JSON has no exact decimal type. Sending strings keeps money exact.</p>
        </div>
        <div class="lc-card">
          <h3>The Same API with Django REST Framework</h3>
          <p>DRF is a separate package (<code>pip install djangorestframework</code>, version 3.18 supports Django 5.2 to 6.1). It cannot be installed in this editor, so read this part and try it in a real project.</p>
        <div class="lc-code"># settings.py<br>INSTALLED_APPS += ["rest_framework"]<br><br># api/serializers.py: model -&gt; JSON and JSON -&gt; validated data<br>from rest_framework import serializers<br><br>class BookSerializer(serializers.ModelSerializer):<br>&nbsp;&nbsp;&nbsp;&nbsp;class Meta:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;model = Book<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fields = ["id", "title", "price"]<br><br># api/views.py: a ViewSet gives list, create, retrieve, update and delete<br>from rest_framework import viewsets, permissions<br><br>class BookViewSet(viewsets.ModelViewSet):<br>&nbsp;&nbsp;&nbsp;&nbsp;queryset = Book.objects.order_by("id")<br>&nbsp;&nbsp;&nbsp;&nbsp;serializer_class = BookSerializer<br>&nbsp;&nbsp;&nbsp;&nbsp;permission_classes = [permissions.IsAuthenticatedOrReadOnly]<br><br># api/urls.py: the router creates /books/ and /books/&lt;pk&gt;/<br>from rest_framework.routers import DefaultRouter<br>router = DefaultRouter()<br>router.register("books", BookViewSet)<br>urlpatterns = router.urls</div>
        </div>
        <div class="lc-card">
          <h3>Plain Django vs DRF</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Plain Django</th><th>DRF</th></tr></thead>
            <tbody>
              <tr><td>Model to JSON</td><td>Your own <code>to_dict()</code></td><td><code>Serializer</code> / <code>ModelSerializer</code></td></tr>
              <tr><td>Validate input</td><td><code>Form</code> + <code>json.loads</code></td><td><code>serializer.is_valid(raise_exception=True)</code></td></tr>
              <tr><td>Views</td><td>Functions with <code>if request.method</code></td><td><code>@api_view</code>, <code>APIView</code>, generic views, <code>ViewSet</code></td></tr>
              <tr><td>URLs</td><td>Written by hand</td><td><code>DefaultRouter</code></td></tr>
              <tr><td>Auth and permissions</td><td>Your own checks</td><td><code>permission_classes</code>, Session/Token auth (JWT via <code>djangorestframework-simplejwt</code>)</td></tr>
              <tr><td>Pagination, filtering, throttling</td><td>By hand</td><td>One setting each</td></tr>
              <tr><td>Try it in the browser</td><td>No</td><td>Browsable API pages</td></tr>
            </tbody>
          </table>
          <p><strong>django-ninja</strong> is a popular alternative that uses type hints (like FastAPI) on top of Django.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Returning <code>200</code> for everything, with <code>{"error": ...}</code> inside. Use the right status code so clients can react.</li>
            <li>Reading <code>request.POST</code> for a JSON body. It is empty; use <code>json.loads(request.body)</code> (or DRF's <code>request.data</code>).</li>
            <li>Putting <code>@csrf_exempt</code> on every view to "make it work". If your API uses session cookies, send the CSRF token in the <code>X-CSRFToken</code> header instead; token-authenticated APIs do not need CSRF.</li>
            <li>Using <code>fields = "__all__"</code> in serializers and leaking private fields such as password hashes.</li>
            <li>Forgetting permissions: DRF's default allows anyone. Set <code>DEFAULT_PERMISSION_CLASSES</code> in <code>REST_FRAMEWORK</code> settings.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add <code>"PATCH"</code> to <code>book_detail</code>: load the JSON body, build <code>BookForm(data, instance=book)</code> after merging the old values (<code>{**to_dict(book), **data}</code>), save it and return the updated book. Then call <code>call("patch", "/api/books/2/", {"price": "175.00"})</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Version your API from day one (<code>/api/v1/books/</code>). When you need a breaking change later, you can add <code>/api/v2/</code> without breaking the mobile app your users already installed.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A small REST-style JSON API in plain Django (DRF does the same with less code)
        import json
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class ApiConfig(AppConfig):         # this file plays the role of the "api" app
            name, label, path = "__main__", "api", "."

        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            INSTALLED_APPS=["__main__.ApiConfig"], DEFAULT_AUTO_FIELD="django.db.models.BigAutoField",
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}})
        django.setup()

        from django import forms
        from django.db import connection, models
        from django.http import HttpResponse, JsonResponse
        from django.shortcuts import get_object_or_404
        from django.urls import path
        from django.views.decorators.http import require_http_methods
        from django.test import Client

        class Book(models.Model):
            title = models.CharField(max_length=100)
            price = models.DecimalField(max_digits=7, decimal_places=2)

        class BookForm(forms.ModelForm):              # validates input (DRF: a Serializer)
            class Meta:
                model = Book
                fields = ["title", "price"]

        def to_dict(book):                            # model -> JSON-friendly dict (DRF: a Serializer)
            return {"id": book.id, "title": book.title, "price": str(book.price)}

        @require_http_methods(["GET", "POST"])
        def book_list(request):                       # /api/books/
            if request.method == "GET":
                return JsonResponse({"results": [to_dict(b) for b in Book.objects.order_by("id")]})
            form = BookForm(json.loads(request.body))
            if not form.is_valid():
                return JsonResponse({"errors": form.errors}, status=400)
            return JsonResponse(to_dict(form.save()), status=201)

        @require_http_methods(["GET", "DELETE"])
        def book_detail(request, pk):                 # /api/books/<pk>/
            book = get_object_or_404(Book, pk=pk)
            if request.method == "DELETE":
                book.delete()
                return HttpResponse(status=204)             # 204 No Content: empty body
            return JsonResponse(to_dict(book))

        urlpatterns = [path("api/books/", book_list), path("api/books/<int:pk>/", book_detail)]
        with connection.schema_editor() as editor:
            editor.create_model(Book)

        api = Client()
        def call(method, url, data=None):
            kwargs = {"data": json.dumps(data), "content_type": "application/json"} if data else {}
            r = getattr(api, method)(url, **kwargs)
            body = r.json() if r.get("Content-Type") == "application/json" else ""
            print(f"{method.upper():<6} {url:<16} {r.status_code}  {body}")

        call("post", "/api/books/", {"title": "Wings of Fire", "price": "299.00"})
        call("post", "/api/books/", {"title": "Godaan", "price": "150.50"})
        call("post", "/api/books/", {"title": "", "price": "abc"})
        call("get", "/api/books/")
        call("get", "/api/books/1/")
        call("delete", "/api/books/1/")
        call("get", "/api/books/1/")
        call("put", "/api/books/2/")
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Performance and Caching</h1>
        </div>
        <p class="lc-lead">Most slow Django pages are slow for one reason: <strong>too many database queries</strong>. First measure and fix the queries, then add <strong>caching</strong> for work that is still expensive. Caching a page that runs 200 queries only hides the problem.</p>
        <div class="lc-card">
          <h3>The N+1 Query Problem</h3>
        <div class="lc-code">posts = Post.objects.all()            # 1 query for the posts<br>for post in posts:<br>&nbsp;&nbsp;&nbsp;&nbsp;print(post.author.name)           # +1 query for EACH post's author</div>
          <p>With 100 posts this runs 101 queries. The template <code>{% for post in posts %}{{ post.author.name }}{% endfor %}</code> has exactly the same problem, which makes it easy to miss.</p>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Use for</th><th>How it works</th></tr></thead>
            <tbody>
              <tr><td><code>select_related("author")</code></td><td><code>ForeignKey</code>, <code>OneToOneField</code> (forward)</td><td>One query with a SQL <code>JOIN</code></td></tr>
              <tr><td><code>prefetch_related("tags")</code></td><td><code>ManyToManyField</code>, reverse FK (<code>author.posts</code>)</td><td>One extra query, joined in Python</td></tr>
              <tr><td><code>only("title")</code> / <code>defer("body")</code></td><td>Wide tables</td><td>Load fewer columns</td></tr>
              <tr><td><code>values_list("title", flat=True)</code></td><td>You only need a few values</td><td>No model objects at all</td></tr>
              <tr><td><code>count()</code>, <code>exists()</code></td><td>"How many?", "Any?"</td><td>SQL does the work; no rows loaded</td></tr>
              <tr><td><code>bulk_create()</code>, <code>update()</code></td><td>Many rows at once</td><td>One query instead of one per row</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Measure First</h3>
          <ul class="lc-list">
            <li><strong>django-debug-toolbar</strong> shows every SQL query for a page during development.</li>
            <li><code>self.assertNumQueries(2)</code> in tests stops an N+1 from coming back.</li>
            <li><code>CaptureQueriesContext(connection)</code> counts queries in any block of code (the starter uses it).</li>
            <li>Add database indexes for columns you often filter or sort by: <code>class Meta: indexes = [models.Index(fields=["status", "-created"])]</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Cache Framework</h3>
        <div class="lc-code"># settings.py: Redis support is built into Django (pip install redis)<br>CACHES = {<br>&nbsp;&nbsp;&nbsp;&nbsp;"default": {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"BACKEND": "django.core.cache.backends.redis.RedisCache",<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"LOCATION": "redis://127.0.0.1:6379",<br>&nbsp;&nbsp;&nbsp;&nbsp;}<br>}<br><br>from django.core.cache import cache<br>cache.set("top_posts", data, timeout=300)          # seconds<br>cache.get("top_posts")                             # None if missing or expired<br>cache.get_or_set("report", build_report, 60)       # compute only when missing<br>cache.delete("top_posts")                          # after the data changes</div>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>How</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Whole view</td><td><code>@cache_page(60 * 15)</code></td><td>Public pages that are the same for everyone</td></tr>
              <tr><td>Part of a template</td><td><code>{% load cache %}{% cache 600 sidebar %}...{% endcache %}</code></td><td>An expensive sidebar or menu</td></tr>
              <tr><td>Any value</td><td><code>cache.get_or_set()</code></td><td>Reports, API results, counts</td></tr>
              <tr><td>Backends</td><td><code>LocMemCache</code> (one process, dev), <code>RedisCache</code>, <code>PyMemcacheCache</code>, <code>DatabaseCache</code></td><td>Use Redis or Memcached in production</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">N+1: loop reads post.author    6 queries<br>select_related('author')       1 query<br>reverse FK, no prefetch        6 queries<br>prefetch_related('posts')      2 queries<br><br>&nbsp;&nbsp;&nbsp;(computing report...)<br>get_or_set #1: 500<br>get_or_set #2: 500<br><br>GET / -&gt; rendered 1 time(s)<br>GET / -&gt; rendered 1 time(s)<br>GET / -&gt; rendered 1 time(s)</div>
          <p>Five posts with five authors: the loop needed 1 + 5 = 6 queries; <code>select_related</code> needed 1. The report was computed only once; the second call came from the cache. The cached view ran its code once and served the next two requests from the cache.</p>
        </div>
        <div class="lc-card">
          <h3>Other Speed Tools</h3>
          <ul class="lc-list">
            <li><strong>Pagination</strong>: never show 10,000 rows on one page (<code>paginate_by</code>, lesson 10).</li>
            <li><strong>Background tasks</strong> for slow work such as sending emails or resizing images. Django 6.0 added a built-in Tasks framework (<code>django.tasks</code>) to define them; you still need a worker backend, and many projects use Celery.</li>
            <li><strong>Persistent connections</strong>: <code>CONN_MAX_AGE = 60</code> reuses database connections (or use connection pooling on PostgreSQL).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Adding caching before fixing N+1 queries.</li>
            <li>Using <code>select_related</code> on a many-to-many or reverse relation. It only follows single-valued relations; use <code>prefetch_related</code>.</li>
            <li>Caching pages that show user-specific data (a cart, "Hello Priya") with <code>@cache_page</code>, so one user sees another user's page.</li>
            <li>Forgetting to delete or update the cached value when the data changes, so users see stale data.</li>
            <li>Using <code>LocMemCache</code> in production with several server processes: each process has its own separate cache.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a <code>Tag</code> model and a <code>tags = models.ManyToManyField(Tag)</code> on <code>Post</code> (create both tables, and give each post two tags). Count the queries for <code>[list(p.tags.all()) for p in Post.objects.all()]</code>, then add <code>.prefetch_related("tags")</code> and count again.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A good target for a normal page is under about 10 queries, whatever the number of rows. If the count grows with the number of rows shown, you have an N+1.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class BlogConfig(AppConfig):        # this file plays the role of the "blog" app
            name, label, path = "__main__", "blog", "."

        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            INSTALLED_APPS=["__main__.BlogConfig"], DEFAULT_AUTO_FIELD="django.db.models.BigAutoField",
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
            CACHES={"default": {"BACKEND": "django.core.cache.backends.locmem.LocMemCache"}})
        django.setup()

        from django.core.cache import cache
        from django.db import connection, models
        from django.http import HttpResponse
        from django.test.utils import CaptureQueriesContext
        from django.urls import path
        from django.views.decorators.cache import cache_page
        from django.test import Client

        class Author(models.Model):
            name = models.CharField(max_length=50)

        class Post(models.Model):
            title = models.CharField(max_length=100)
            author = models.ForeignKey(Author, on_delete=models.CASCADE, related_name="posts")

        with connection.schema_editor() as editor:
            editor.create_model(Author)
            editor.create_model(Post)
        for i in range(1, 6):
            Post.objects.create(title=f"Post {i}", author=Author.objects.create(name=f"Author {i}"))

        def count_queries(label, func):
            with CaptureQueriesContext(connection) as ctx:
                func()
            n = len(ctx.captured_queries)
            print(f"{label:<30} {n} {'query' if n == 1 else 'queries'}")

        count_queries("N+1: loop reads post.author", lambda: [p.author.name for p in Post.objects.all()])
        count_queries("select_related('author')", lambda: [p.author.name for p in Post.objects.select_related("author")])
        count_queries("reverse FK, no prefetch", lambda: [list(a.posts.all()) for a in Author.objects.all()])
        count_queries("prefetch_related('posts')", lambda: [list(a.posts.all()) for a in Author.objects.prefetch_related("posts")])

        # Low-level cache: store an expensive result for 60 seconds
        def expensive_report():
            print("   (computing report...)")
            return Post.objects.count() * 100
        print()
        print("get_or_set #1:", cache.get_or_set("report", expensive_report, timeout=60))
        print("get_or_set #2:", cache.get_or_set("report", expensive_report, timeout=60))

        # View cache: the whole response is stored for 5 minutes
        calls = 0
        @cache_page(60 * 5)
        def home(request):
            global calls
            calls += 1
            return HttpResponse(f"rendered {calls} time(s)")

        urlpatterns = [path("", home)]
        c = Client()
        print("\n" + "\n".join(f"GET / -> {c.get('/').content.decode()}" for _ in range(3)))
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Deployment and Production Settings</h1>
        </div>
        <p class="lc-lead"><code>runserver</code> is only for development. A production site needs different settings (<code>DEBUG=False</code>, real secrets, HTTPS), a proper application server, a production database and a plan for static files. Django includes a checklist command that finds most mistakes for you.</p>
        <div class="lc-card">
          <h3>Development vs Production</h3>
          <table class="lc-table">
            <thead><tr><th>Setting / tool</th><th>Development</th><th>Production</th></tr></thead>
            <tbody>
              <tr><td><code>DEBUG</code></td><td><code>True</code></td><td><code>False</code> (debug pages leak code and settings)</td></tr>
              <tr><td><code>SECRET_KEY</code></td><td>Any value</td><td>Long random value from an environment variable</td></tr>
              <tr><td><code>ALLOWED_HOSTS</code></td><td>Empty is fine</td><td><code>["www.example.com"]</code></td></tr>
              <tr><td>Server</td><td><code>manage.py runserver</code></td><td>Gunicorn (WSGI) or Uvicorn (ASGI)</td></tr>
              <tr><td>Database</td><td>SQLite</td><td>PostgreSQL (or MySQL); SQLite only for small, low-traffic sites</td></tr>
              <tr><td>Static files</td><td>Served by <code>runserver</code></td><td><code>collectstatic</code> + WhiteNoise, Nginx or a CDN</td></tr>
              <tr><td>HTTPS</td><td>No</td><td>Yes, with the <code>SECURE_*</code> settings</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Deployment Checklist Command</h3>
        <div class="lc-code">$ DJANGO_SETTINGS_MODULE=mysite.settings.prod python manage.py check --deploy</div>
          <p>It runs the normal system checks plus security checks for production. Fix every warning, or silence one only when you understand why it does not apply (for example, HTTPS is handled by your hosting platform).</p>
        </div>
        <div class="lc-card">
          <h3>Production Security Settings</h3>
        <div class="lc-code">DEBUG = False<br>SECRET_KEY = os.environ["DJANGO_SECRET_KEY"]<br>ALLOWED_HOSTS = ["www.example.com"]<br>CSRF_TRUSTED_ORIGINS = ["https://www.example.com"]<br><br>SECURE_SSL_REDIRECT = True            # send http:// visitors to https://<br>SECURE_HSTS_SECONDS = 31536000        # browsers must use HTTPS for a year<br>SECURE_HSTS_INCLUDE_SUBDOMAINS = True<br>SECURE_HSTS_PRELOAD = True<br>SESSION_COOKIE_SECURE = True          # cookies only over HTTPS<br>CSRF_COOKIE_SECURE = True<br>SECURE_PROXY_SSL_HEADER = ("HTTP_X_FORWARDED_PROTO", "https")   # only behind a trusted proxy</div>
          <p>Start HSTS with a small value (for example 3600) and increase it once HTTPS works everywhere: browsers remember HSTS and will refuse plain HTTP for that long.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <p>The starter runs Django's real deployment checks twice: once with laptop settings, and once inside <code>override_settings(...)</code> with production values.</p>
        <div class="lc-code">Development settings: 7 issue(s)<br>&nbsp;&nbsp;&nbsp;security.W004  You have not set a value for the SECURE_HSTS_SECONDS se...<br>&nbsp;&nbsp;&nbsp;security.W008  Your SECURE_SSL_REDIRECT setting is not set to True<br>&nbsp;&nbsp;&nbsp;security.W009  Your SECRET_KEY has less than 50 characters, less than ...<br>&nbsp;&nbsp;&nbsp;security.W012  SESSION_COOKIE_SECURE is not set to True<br>&nbsp;&nbsp;&nbsp;security.W016  You have 'django.middleware.csrf.CsrfViewMiddleware' in...<br>&nbsp;&nbsp;&nbsp;security.W018  You should not have DEBUG set to True in deployment.<br>&nbsp;&nbsp;&nbsp;security.W020  ALLOWED_HOSTS must not be empty in deployment.<br><br>Production settings: 0 issue(s)<br><br>DEBUG is False | hosts: ['www.example.com']</div>
          <p>Every warning disappeared once the production values were used. (The editor itself needs an async setting that Django warns about, so the starter silences only that one check, <code>async.E001</code>.)</p>
        </div>
        <div class="lc-card">
          <h3>WSGI, ASGI and the Application Server</h3>
        <div class="lc-code">pip install gunicorn<br>gunicorn mysite.wsgi:application --workers 3 --bind 0.0.0.0:8000<br><br>pip install uvicorn            # for async views, WebSockets (with Channels)<br>uvicorn mysite.asgi:application --workers 3</div>
          <p>Usually a reverse proxy (Nginx, or your platform's load balancer) handles HTTPS and forwards requests to Gunicorn or Uvicorn. Platforms such as Render, Railway, Fly.io, Heroku, or a VPS on AWS, Azure or DigitalOcean all follow this pattern.</p>
        </div>
        <div class="lc-card">
          <h3>A Release, Step by Step</h3>
        <div class="lc-code">pip install -r requirements.txt<br>python manage.py check --deploy<br>python manage.py migrate --noinput          # apply new migrations<br>python manage.py collectstatic --noinput    # gather static files<br># restart gunicorn / uvicorn</div>
          <p>Use PostgreSQL with <code>psycopg</code> (version 3: <code>pip install "psycopg[binary]"</code>) and read the connection details from environment variables, for example with <code>dj-database-url</code>. Configure <code>LOGGING</code> and an error tracker (such as Sentry) so you hear about 500 errors, and set <code>ADMINS</code> plus email settings if you want error emails.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving <code>DEBUG=True</code> in production. Anyone who triggers an error sees your code, settings and environment.</li>
            <li>Committing <code>SECRET_KEY</code> to Git. If it leaks, change it: old sessions and password-reset links stop working, which is what you want.</li>
            <li>Getting "Bad Request (400)" after deploying: the domain is missing from <code>ALLOWED_HOSTS</code>.</li>
            <li>Getting "CSRF verification failed" on HTTPS forms: add the site to <code>CSRF_TRUSTED_ORIGINS</code> (with <code>https://</code>).</li>
            <li>Using <code>runserver</code> in production. It is not built for security or performance.</li>
            <li>Forgetting <code>migrate</code> or <code>collectstatic</code> on release, so pages crash or load without CSS.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In <code>PRODUCTION</code>, change <code>SESSION_COOKIE_SECURE</code> to <code>False</code> and delete the <code>ALLOWED_HOSTS</code> line. Before running, predict which check IDs will come back. Then remove <code>XFrameOptionsMiddleware</code> from <code>MIDDLEWARE</code> and see which new warning appears.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep one settings module and read every value that differs between environments from environment variables (the "twelve-factor" style). Then the same code runs on your laptop, in CI and in production.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # "python manage.py check --deploy": Django's own production checklist
        import django
        from django.conf import settings

        settings.configure(
            DEBUG=True, SECRET_KEY="dev-key", ALLOWED_HOSTS=[],          # typical laptop settings
            MIDDLEWARE=["django.middleware.security.SecurityMiddleware",
                        "django.contrib.sessions.middleware.SessionMiddleware",
                        "django.middleware.csrf.CsrfViewMiddleware",
                        "django.middleware.clickjacking.XFrameOptionsMiddleware"],
            INSTALLED_APPS=["django.contrib.sessions"],
            SILENCED_SYSTEM_CHECKS=["async.E001"],   # the editor itself needs an async setting
        )
        django.setup()

        from django.core import checks
        from django.test.utils import override_settings

        def deploy_check(label):
            issues = [i for i in checks.run_checks(include_deployment_checks=True) if not i.is_silenced()]
            print(f"{label}: {len(issues)} issue(s)")
            for issue in sorted(issues, key=lambda i: i.id):
                first_sentence = issue.msg.split(". ")[0]
                print(f"   {issue.id}  {first_sentence[:55]}{'...' if len(first_sentence) > 55 else ''}")

        deploy_check("Development settings")

        PRODUCTION = dict(                            # what settings/prod.py would set
            DEBUG=False,
            SECRET_KEY="p9$Lq2@w8!Zr4#Tb6^Nx1&Hc3*Vm5(Ks7)Gd0-Fj2_Ya8+Ue4=Wo6~Ri9",  # from an env var!
            ALLOWED_HOSTS=["www.example.com"],
            SECURE_SSL_REDIRECT=True,                 # http:// -> https://
            SECURE_HSTS_SECONDS=31536000,             # browsers use HTTPS only, for a year
            SECURE_HSTS_INCLUDE_SUBDOMAINS=True,
            SECURE_HSTS_PRELOAD=True,
            SESSION_COOKIE_SECURE=True,               # cookies only over HTTPS
            CSRF_COOKIE_SECURE=True,
        )
        with override_settings(**PRODUCTION):
            print()
            deploy_check("Production settings")
            print("\nDEBUG is", settings.DEBUG, "| hosts:", settings.ALLOWED_HOSTS)
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Capstone Project: Mini Blog</h1>
        </div>
        <p class="lc-lead">Time to put the whole course together. You will build a <strong>mini blog</strong>: a home page listing published posts with their comment counts, a post page where logged-in users can comment, spam validation, success messages and proper 404s. The starter is a complete working version in one file; your job is to understand every line and then extend it.</p>
        <div class="lc-card">
          <h3>What the App Does</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Django tool</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td><code>Post</code> and <code>Comment</code> tables with a foreign key</td><td>Models, <code>ForeignKey</code>, <code>related_name</code></td><td>5</td></tr>
              <tr><td>Comment author is the logged-in user</td><td><code>settings.AUTH_USER_MODEL</code></td><td>5, 12</td></tr>
              <tr><td>Home page: published posts + comment counts in one query</td><td><code>ListView</code>, <code>get_queryset()</code>, <code>annotate(Count(...))</code></td><td>7, 10</td></tr>
              <tr><td>Hidden drafts return 404</td><td><code>get_object_or_404(Post, pk=pk, published=True)</code></td><td>3</td></tr>
              <tr><td>Only logged-in users can open a post and comment</td><td><code>@login_required</code></td><td>12</td></tr>
              <tr><td>Comment form rejects spam</td><td><code>ModelForm</code>, <code>clean_text()</code>, <code>save(commit=False)</code></td><td>9</td></tr>
              <tr><td>"Comment added" after the redirect</td><td>Messages framework, Post/Redirect/Get</td><td>13</td></tr>
              <tr><td>Pages built from templates</td><td><code>render()</code>, <code>{% for %}</code>, <code>{% if %}</code></td><td>4</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 1: Create the Project (on Your Computer)</h3>
        <div class="lc-code">python -m venv .venv &amp;&amp; source .venv/bin/activate<br>pip install "django==6.1.*"<br>django-admin startproject mysite .<br>python manage.py startapp accounts        # custom user model first (lesson 12)<br>python manage.py startapp blog<br># add "accounts" and "blog" to INSTALLED_APPS, set AUTH_USER_MODEL = "accounts.User"<br>python manage.py makemigrations<br>python manage.py migrate<br>python manage.py createsuperuser</div>
        </div>
        <div class="lc-card">
          <h3>Step 2: Models and Form</h3>
        <div class="lc-code"># blog/models.py<br>class Post(models.Model):<br>&nbsp;&nbsp;&nbsp;&nbsp;title = models.CharField(max_length=200)<br>&nbsp;&nbsp;&nbsp;&nbsp;published = models.BooleanField(default=True)<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def get_absolute_url(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return reverse("blog:post-detail", args=[self.pk])<br><br>class Comment(models.Model):<br>&nbsp;&nbsp;&nbsp;&nbsp;post = models.ForeignKey(Post, on_delete=models.CASCADE, related_name="comments")<br>&nbsp;&nbsp;&nbsp;&nbsp;author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)<br>&nbsp;&nbsp;&nbsp;&nbsp;text = models.CharField(max_length=300)<br><br># blog/forms.py<br>class CommentForm(forms.ModelForm):<br>&nbsp;&nbsp;&nbsp;&nbsp;class Meta:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;model = Comment<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fields = ["text"]              # post and author are set in the view, never by the user<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def clean_text(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if "spam" in self.cleaned_data["text"].lower():<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;raise forms.ValidationError("No spam, please.")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return self.cleaned_data["text"]</div>
        </div>
        <div class="lc-card">
          <h3>Step 3: Views and URLs</h3>
        <div class="lc-code"># blog/views.py<br>class PostList(ListView):<br>&nbsp;&nbsp;&nbsp;&nbsp;context_object_name = "posts"<br>&nbsp;&nbsp;&nbsp;&nbsp;def get_queryset(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return (Post.objects.filter(published=True)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.annotate(num_comments=Count("comments")).order_by("id"))<br><br>@login_required<br>def post_detail(request, pk):<br>&nbsp;&nbsp;&nbsp;&nbsp;post = get_object_or_404(Post, pk=pk, published=True)<br>&nbsp;&nbsp;&nbsp;&nbsp;form = CommentForm(request.POST or None)<br>&nbsp;&nbsp;&nbsp;&nbsp;if request.method == "POST" and form.is_valid():<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;comment = form.save(commit=False)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;comment.post, comment.author = post, request.user<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;comment.save()<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;messages.success(request, "Comment added")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return redirect("blog:post-detail", pk=post.pk)<br>&nbsp;&nbsp;&nbsp;&nbsp;return render(request, "blog/post_detail.html", {"post": post, "form": form})<br><br># blog/urls.py<br>app_name = "blog"<br>urlpatterns = [<br>&nbsp;&nbsp;&nbsp;&nbsp;path("", views.PostList.as_view(), name="post-list"),<br>&nbsp;&nbsp;&nbsp;&nbsp;path("posts/&lt;int:pk&gt;/", views.post_detail, name="post-detail"),<br>]</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
        <div class="lc-code">1. Home:            [Hello Django - 0 comments]<br>2. Logged out:      /login/?next=/posts/1/<br>3. Valid comment:   302 (Comment added) Hello Django | riya: Great post!;<br>4. Spam comment:    Hello Django | riya: Great post!; ERRORS: No spam, please.<br>5. Draft post:      404<br>6. Home again:      [Hello Django - 1 comments]</div>
          <ul class="lc-list">
            <li>Line 1: the draft is not listed, because <code>get_queryset()</code> filters it out.</li>
            <li>Line 2: a logged-out visitor is sent to the login page with <code>?next=</code>.</li>
            <li>Line 3: the valid comment was saved, the view redirected (302), and the next page showed the one-time message.</li>
            <li>Line 4: the spam comment failed <code>clean_text()</code>; nothing was saved and the error was shown.</li>
            <li>Lines 5 and 6: the draft gives 404 even to logged-in users, and the comment count went up.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Step 4: Tests and Deployment</h3>
        <div class="lc-code">class CommentTests(TestCase):<br>&nbsp;&nbsp;&nbsp;&nbsp;@classmethod<br>&nbsp;&nbsp;&nbsp;&nbsp;def setUpTestData(cls):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cls.user = get_user_model().objects.create_user("riya", password="pw")<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cls.post = Post.objects.create(title="Hello")<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def test_login_required(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;response = self.client.get(self.post.get_absolute_url())<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.assertEqual(response.status_code, 302)<br><br>&nbsp;&nbsp;&nbsp;&nbsp;def test_spam_is_rejected(self):<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.client.force_login(self.user)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.client.post(self.post.get_absolute_url(), {"text": "spam!"})<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;self.assertFalse(Comment.objects.exists())</div>
          <p>Before going live: run <code>python manage.py test</code>, then <code>check --deploy</code> with production settings, and follow the release steps from lesson 19 (<code>migrate</code>, <code>collectstatic</code>, Gunicorn or Uvicorn behind HTTPS).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes in Projects Like This</h3>
          <ul class="lc-list">
            <li>Letting the form include <code>author</code> or <code>post</code>, so a user can post as someone else. Set them in the view.</li>
            <li>Counting comments with <code>{{ post.comments.count }}</code> inside the list loop: one extra query per post. Use <code>annotate()</code>.</li>
            <li>Rendering the page after a successful POST instead of redirecting.</li>
            <li>Checking <code>published</code> on the list page but forgetting it on the detail page, so drafts are visible by URL.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it: Extend the Blog</h3>
          <ol class="lc-list">
            <li>Add a limit: reject a comment if the same user already has 3 comments on this post (check in the view before saving, and add <code>messages.error</code>).</li>
            <li>Add an <code>author</code> field to <code>Post</code> and a <code>my_posts</code> view that shows only the logged-in user's posts.</li>
            <li>Add a JSON endpoint <code>/api/posts/</code> that returns the published posts with <code>JsonResponse</code> (lesson 17).</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Where to Go Next</h3>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Learn</th></tr></thead>
            <tbody>
              <tr><td>APIs for React or mobile apps</td><td>Django REST Framework or django-ninja</td></tr>
              <tr><td>Interactive pages without a big JS framework</td><td>HTMX with Django templates</td></tr>
              <tr><td>Chat, live notifications (WebSockets)</td><td>Django Channels on ASGI</td></tr>
              <tr><td>Emails and slow jobs in the background</td><td>Django's Tasks framework (6.0+) with a worker, or Celery</td></tr>
              <tr><td>Search, analytics, JSON data</td><td>PostgreSQL features in <code>django.contrib.postgres</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put this project on GitHub with a clear README, a <code>requirements.txt</code>, tests and a live link. A small, finished, deployed Django app impresses recruiters more than a big unfinished one.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Capstone: a mini blog with posts, comments, login and messages
        import django
        from django.apps import AppConfig
        from django.conf import settings

        class BlogConfig(AppConfig):        # this file plays the role of the "blog" app
            name, label, path = "__main__", "blog", "."

        TEMPLATES_DICT = {
            "blog/post_list.html": "{% for p in posts %}[{{ p.title }} - {{ p.num_comments }} comments] {% endfor %}",
            "blog/post_detail.html": "{% for m in messages %}({{ m }}) {% endfor %}{{ post.title }} | "
                                     "{% for c in post.comments.all %}{{ c.author }}: {{ c.text }}; {% endfor %}"
                                     "{% if form.errors %}ERRORS: {{ form.text.errors.0 }}{% endif %}",
        }
        settings.configure(SECRET_KEY="lesson-only", ROOT_URLCONF=__name__, ALLOWED_HOSTS=["testserver"],
            INSTALLED_APPS=["django.contrib.contenttypes", "django.contrib.auth", "django.contrib.sessions",
                            "django.contrib.messages", "__main__.BlogConfig"],
            MIDDLEWARE=["django.contrib.sessions.middleware.SessionMiddleware",
                        "django.contrib.auth.middleware.AuthenticationMiddleware",
                        "django.contrib.messages.middleware.MessageMiddleware"],
            TEMPLATES=[{"BACKEND": "django.template.backends.django.DjangoTemplates", "OPTIONS": {
                "loaders": [("django.template.loaders.locmem.Loader", TEMPLATES_DICT)],
                "context_processors": ["django.contrib.messages.context_processors.messages"]}}],
            DATABASES={"default": {"ENGINE": "django.db.backends.sqlite3", "NAME": ":memory:"}},
            DEFAULT_AUTO_FIELD="django.db.models.BigAutoField", LOGIN_URL="/login/")
        django.setup()

        from django import forms
        from django.contrib import messages
        from django.contrib.auth import get_user_model
        from django.contrib.auth.decorators import login_required
        from django.core.management import call_command
        from django.db import connection, models
        from django.db.models import Count
        from django.shortcuts import get_object_or_404, redirect, render
        from django.urls import path
        from django.views.generic import ListView
        from django.test import Client

        class Post(models.Model):                                          # models.py
            title = models.CharField(max_length=200)
            published = models.BooleanField(default=True)

        class Comment(models.Model):
            post = models.ForeignKey(Post, on_delete=models.CASCADE, related_name="comments")
            author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
            text = models.CharField(max_length=300)

        class CommentForm(forms.ModelForm):                                # forms.py
            class Meta:
                model = Comment
                fields = ["text"]
            def clean_text(self):
                if "spam" in self.cleaned_data["text"].lower():
                    raise forms.ValidationError("No spam, please.")
                return self.cleaned_data["text"]

        class PostList(ListView):                                          # views.py
            context_object_name = "posts"
            def get_queryset(self):
                return Post.objects.filter(published=True).annotate(num_comments=Count("comments")).order_by("id")

        @login_required
        def post_detail(request, pk):
            post = get_object_or_404(Post, pk=pk, published=True)
            form = CommentForm(request.POST or None)
            if request.method == "POST" and form.is_valid():
                comment = form.save(commit=False)
                comment.post, comment.author = post, request.user
                comment.save()
                messages.success(request, "Comment added")
                return redirect("post-detail", pk=post.pk)                 # Post/Redirect/Get
            return render(request, "blog/post_detail.html", {"post": post, "form": form})

        urlpatterns = [path("", PostList.as_view()), path("posts/<int:pk>/", post_detail, name="post-detail")]

        call_command("migrate", verbosity=0)
        with connection.schema_editor() as editor:
            editor.create_model(Post)
            editor.create_model(Comment)
        hello = Post.objects.create(title="Hello Django")
        Post.objects.create(title="Hidden draft", published=False)
        riya = get_user_model().objects.create_user("riya")

        c = Client()
        print("1. Home:           ", c.get("/").content.decode())
        print("2. Logged out:     ", c.get(f"/posts/{hello.pk}/")["Location"])
        c.force_login(riya)
        r = c.post(f"/posts/{hello.pk}/", {"text": "Great post!"}, follow=True)
        print("3. Valid comment:  ", r.redirect_chain[0][1], r.content.decode())
        print("4. Spam comment:   ", c.post(f"/posts/{hello.pk}/", {"text": "Buy SPAM now"}).content.decode())
        print("5. Draft post:     ", c.get("/posts/2/").status_code)
        print("6. Home again:     ", c.get("/").content.decode())
      PYTHON
    }
  }
end

module DjangoContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Introduction to Django</h1>
        </div>
        <p class="lc-lead">Django is Python's most popular web framework — batteries included, secure by default, and built for rapid development. It powers Instagram, Pinterest, and Disqus.</p>
        <div class="lc-card">
          <h3>MVT Architecture</h3>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>Responsibility</th><th>File</th></tr></thead>
            <tbody>
              <tr><td>Model</td><td>Data structure and database logic</td><td>models.py</td></tr>
              <tr><td>View</td><td>Business logic, processes requests</td><td>views.py</td></tr>
              <tr><td>Template</td><td>HTML presentation layer</td><td>templates/*.html</td></tr>
              <tr><td>URL</td><td>Routes requests to views</td><td>urls.py</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Creating a Project</h3>
          <div class="lc-code">pip install django<br>django-admin startproject mysite<br>cd mysite<br>python manage.py startapp blog<br>python manage.py runserver</div>
        </div>
        <div class="lc-card">
          <h3>Django vs Flask vs FastAPI</h3>
          <table class="lc-table">
            <thead><tr><th>Framework</th><th>Philosophy</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td>Django</td><td>Batteries included, opinionated</td><td>Full apps, rapid development</td></tr>
              <tr><td>Flask</td><td>Micro, minimal, flexible</td><td>Small APIs, custom stacks</td></tr>
              <tr><td>FastAPI</td><td>Modern, async-first, typed</td><td>High-performance APIs</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Django's <code>manage.py</code> is your Swiss army knife — use it for migrations, creating apps, running tests, and opening a database shell.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django simulated — core concepts in plain Python

        class DjangoApp:
            """Simulates a minimal Django application lifecycle."""
            def __init__(self, name):
                self.name   = name
                self.routes = {}
                self.models = {}
                print(f"Django app '{name}' initialised")

            def route(self, path, view_fn):
                self.routes[path] = view_fn

            def dispatch(self, path, method="GET", data=None):
                """Simulate Django's URL dispatcher."""
                view = self.routes.get(path)
                if not view:
                    return {"status": 404, "body": "Not Found"}
                request = {"method": method, "path": path, "data": data or {}}
                return view(request)

        # Define views (Django view = Python function or class)
        def index(request):
            return {"status": 200, "body": "Welcome to Django!"}

        def about(request):
            return {"status": 200, "body": "About this site"}

        def hello(request):
            name = request["data"].get("name", "World")
            return {"status": 200, "body": f"Hello, {name}!"}

        # Wire up the app (urls.py equivalent)
        app = DjangoApp("mysite")
        app.route("/",       index)
        app.route("/about/", about)
        app.route("/hello/", hello)

        # Simulate HTTP requests
        requests = [
            ("/",         "GET",  {}),
            ("/about/",   "GET",  {}),
            ("/hello/",   "GET",  {"name": "Django"}),
            ("/missing/", "GET",  {}),
        ]

        print("\nRequest / Response cycle:")
        print("=" * 40)
        for path, method, data in requests:
            resp = app.dispatch(path, method, data)
            icon = "✅" if resp["status"] == 200 else "❌"
            print(f"{icon} {method} {path:<15} → {resp['status']}: {resp['body']}")
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Project Structure and Settings</h1>
        </div>
        <p class="lc-lead">Understanding Django's project layout and settings.py is the foundation for building scalable applications.</p>
        <div class="lc-card">
          <h3>Project Layout</h3>
          <div class="lc-code">mysite/<br>├── manage.py          # CLI tool<br>├── mysite/<br>│   ├── settings.py    # All configuration<br>│   ├── urls.py        # Root URL config<br>│   ├── wsgi.py        # Production server entry<br>│   └── asgi.py        # Async server entry<br>└── blog/              # Your app<br>    ├── models.py<br>    ├── views.py<br>    ├── urls.py<br>    ├── admin.py<br>    ├── apps.py<br>    └── migrations/</div>
        </div>
        <div class="lc-card">
          <h3>Key settings.py Config</h3>
          <div class="lc-code">INSTALLED_APPS = ['django.contrib.admin', 'blog']<br>DATABASES = {'default': {'ENGINE': 'django.db.backends.sqlite3'}}<br>TEMPLATES = [{'DIRS': [BASE_DIR / 'templates']}]<br>STATIC_URL = '/static/'<br>MEDIA_URL  = '/media/'<br>SECRET_KEY = env('SECRET_KEY')  # Never hardcode!</div>
        </div>
        <div class="lc-card">
          <h3>Environment-based Settings</h3>
          <div class="lc-code"># settings/base.py  ← shared<br># settings/dev.py   ← DEBUG=True, SQLite<br># settings/prod.py  ← DEBUG=False, PostgreSQL<br>python manage.py runserver --settings=mysite.settings.dev</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>django-environ</code> or <code>python-decouple</code> to load secrets from <code>.env</code> files. Never commit <code>SECRET_KEY</code> or database passwords to git.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django settings system — simulated

        class Settings:
            """Mimics Django's settings module."""
            def __init__(self, env="development"):
                self.env = env
                self.DEBUG          = env == "development"
                self.SECRET_KEY     = "dev-secret-key-never-use-in-prod" if env == "development" else "***"
                self.ALLOWED_HOSTS  = ["*"] if env == "development" else ["mysite.com"]
                self.INSTALLED_APPS = [
                    "django.contrib.admin",
                    "django.contrib.auth",
                    "django.contrib.contenttypes",
                    "django.contrib.sessions",
                    "blog",
                ]
                self.DATABASES = {
                    "default": {
                        "ENGINE": "django.db.backends.sqlite3" if env == "development"
                                  else "django.db.backends.postgresql",
                        "NAME":   "db.sqlite3" if env == "development" else "mysite_prod",
                    }
                }
                self.MIDDLEWARE = [
                    "django.middleware.security.SecurityMiddleware",
                    "django.contrib.sessions.middleware.SessionMiddleware",
                    "django.middleware.common.CommonMiddleware",
                    "django.middleware.csrf.CsrfViewMiddleware",
                    "django.contrib.auth.middleware.AuthenticationMiddleware",
                ]

            def check(self):
                """Simulate Django's system check framework."""
                issues = []
                if self.DEBUG and self.env == "production":
                    issues.append("ERROR: DEBUG must be False in production")
                if "dev-secret" in self.SECRET_KEY and self.env == "production":
                    issues.append("ERROR: Change SECRET_KEY for production")
                if "*" in self.ALLOWED_HOSTS and not self.DEBUG:
                    issues.append("WARNING: ALLOWED_HOSTS should not be ['*'] in production")
                return issues

        for environment in ["development", "production"]:
            print(f"=== {environment.upper()} Settings ===")
            s = Settings(environment)
            print(f"  DEBUG:         {s.DEBUG}")
            print(f"  Database:      {s.DATABASES['default']['ENGINE'].split('.')[-1]}")
            print(f"  Allowed hosts: {s.ALLOWED_HOSTS}")
            print(f"  Apps: {len(s.INSTALLED_APPS)} installed")
            issues = s.check()
            if issues:
                for issue in issues:
                    print(f"  ⚠️  {issue}")
            else:
                print(f"  ✅ System check passed")
            print()
      PYTHON
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">URLs and Views</h1>
        </div>
        <p class="lc-lead">Django's URL dispatcher maps URL patterns to view functions. Views receive a request and return a response — they're the heart of your application logic.</p>
        <div class="lc-card">
          <h3>urls.py — Routing</h3>
          <div class="lc-code">from django.urls import path, include<br>from . import views<br><br>urlpatterns = [<br>    path('', views.index, name='index'),<br>    path('posts/', views.post_list, name='post-list'),<br>    path('posts/&lt;int:pk&gt;/', views.post_detail, name='post-detail'),<br>    path('posts/&lt;slug:slug&gt;/', views.post_by_slug, name='post-slug'),<br>    path('api/', include('api.urls')),<br>]</div>
        </div>
        <div class="lc-card">
          <h3>Function-Based Views</h3>
          <div class="lc-code">from django.shortcuts import render, get_object_or_404<br>from django.http import JsonResponse<br><br>def post_list(request):<br>    posts = Post.objects.filter(published=True).order_by('-created_at')<br>    return render(request, 'blog/post_list.html', {'posts': posts})<br><br>def post_detail(request, pk):<br>    post = get_object_or_404(Post, pk=pk, published=True)<br>    return render(request, 'blog/post_detail.html', {'post': post})</div>
        </div>
        <div class="lc-card">
          <h3>URL Converters</h3>
          <table class="lc-table">
            <thead><tr><th>Converter</th><th>Matches</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>&lt;int:pk&gt;</td><td>Integer</td><td>/posts/42/</td></tr>
              <tr><td>&lt;str:name&gt;</td><td>Non-empty string</td><td>/user/alice/</td></tr>
              <tr><td>&lt;slug:slug&gt;</td><td>Letters, numbers, hyphens</td><td>/my-post/</td></tr>
              <tr><td>&lt;uuid:id&gt;</td><td>UUID</td><td>/item/abc-123/</td></tr>
              <tr><td>&lt;path:subpath&gt;</td><td>Including slashes</td><td>/files/a/b/c</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always use <code>name=</code> in your URL patterns and refer to URLs with <code>reverse()</code> or <code>{% url %}</code> in templates — never hardcode paths.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # URL dispatcher and views — simulated

        import re

        class URLRouter:
            def __init__(self):
                self.patterns = []

            def path(self, pattern, view_fn, name=None):
                # Convert Django path syntax to regex
                regex = pattern
                regex = re.sub(r'<int:(\w+)>', r'(?P<\1>[0-9]+)', regex)
                regex = re.sub(r'<str:(\w+)>', r'(?P<\1>[^/]+)', regex)
                regex = re.sub(r'<slug:(\w+)>', r'(?P<\1>[-\\w]+)', regex)
                self.patterns.append({"pattern": pattern, "regex": "^" + regex + "$",
                                      "view": view_fn, "name": name})

            def resolve(self, path):
                for p in self.patterns:
                    m = re.match(p["regex"], path)
                    if m:
                        return p["view"], m.groupdict()
                return None, {}

            def reverse(self, name, **kwargs):
                for p in self.patterns:
                    if p["name"] == name:
                        result = p["pattern"]
                        for k, v in kwargs.items():
                            result = re.sub(r'<[^>]+:' + k + r'>', str(v), result)
                        return result
                return None

        # Simulated database
        POSTS = [
            {"id": 1, "slug": "hello-django", "title": "Hello Django",  "published": True},
            {"id": 2, "slug": "orm-guide",    "title": "ORM Guide",     "published": True},
            {"id": 3, "slug": "draft-post",   "title": "Draft Post",    "published": False},
        ]

        # Views
        def index(request, **kwargs):
            return {"status": 200, "body": "Welcome to the blog!"}

        def post_list(request, **kwargs):
            published = [p for p in POSTS if p["published"]]
            return {"status": 200, "body": f"{len(published)} published posts",
                    "data": published}

        def post_detail(request, pk=None, **kwargs):
            post = next((p for p in POSTS if p["id"] == int(pk)), None)
            if not post: return {"status": 404, "body": "Post not found"}
            if not post["published"]: return {"status": 403, "body": "Not published"}
            return {"status": 200, "body": post["title"], "data": post}

        def post_by_slug(request, slug=None, **kwargs):
            post = next((p for p in POSTS if p["slug"] == slug), None)
            if not post: return {"status": 404, "body": "Not found"}
            return {"status": 200, "body": post["title"]}

        # Wire up URLs
        router = URLRouter()
        router.path("",               index,        name="index")
        router.path("posts/",         post_list,    name="post-list")
        router.path("posts/<int:pk>/", post_detail, name="post-detail")
        router.path("posts/<slug:slug>/", post_by_slug, name="post-slug")

        # Test requests
        test_paths = ["", "posts/", "posts/1/", "posts/2/", "posts/3/",
                      "posts/hello-django/", "posts/99/"]

        print("URL Dispatcher Demo")
        print("=" * 50)
        for path in test_paths:
            view, kwargs = router.resolve(path)
            if view:
                resp = view({"method": "GET"}, **kwargs)
                icon = "✅" if resp["status"] == 200 else "❌"
                print(f"{icon} /{path:<25} → {resp['status']}: {resp['body']}")
            else:
                print(f"❌ /{path:<25} → 404: No URL match")

        print(f"\nreverse('post-detail', pk=2) = /{router.reverse('post-detail', pk=2)}")
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Models and the ORM</h1>
        </div>
        <p class="lc-lead">Django's ORM lets you define database tables as Python classes. It handles SQL generation, migrations, and provides a powerful query API — all without writing SQL.</p>
        <div class="lc-card">
          <h3>Defining Models</h3>
          <div class="lc-code">from django.db import models<br><br>class Post(models.Model):<br>    title     = models.CharField(max_length=200)<br>    content   = models.TextField()<br>    slug      = models.SlugField(unique=True)<br>    author    = models.ForeignKey('auth.User', on_delete=models.CASCADE)<br>    published = models.BooleanField(default=False)<br>    created_at = models.DateTimeField(auto_now_add=True)<br>    updated_at = models.DateTimeField(auto_now=True)<br><br>    class Meta:<br>        ordering = ['-created_at']<br><br>    def __str__(self):<br>        return self.title</div>
        </div>
        <div class="lc-card">
          <h3>Common Field Types</h3>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Python type</th><th>Use case</th></tr></thead>
            <tbody>
              <tr><td>CharField(max_length=n)</td><td>str</td><td>Short text, names</td></tr>
              <tr><td>TextField()</td><td>str</td><td>Long text, content</td></tr>
              <tr><td>IntegerField()</td><td>int</td><td>Numbers</td></tr>
              <tr><td>DecimalField(max_digits, decimal_places)</td><td>Decimal</td><td>Money</td></tr>
              <tr><td>BooleanField()</td><td>bool</td><td>Flags</td></tr>
              <tr><td>DateTimeField(auto_now_add=True)</td><td>datetime</td><td>Timestamps</td></tr>
              <tr><td>ForeignKey(Model, on_delete)</td><td>int (FK)</td><td>Many-to-one</td></tr>
              <tr><td>ManyToManyField(Model)</td><td>QuerySet</td><td>M2M relations</td></tr>
              <tr><td>JSONField()</td><td>dict/list</td><td>Flexible data</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always define <code>__str__</code> on every model — it makes the Django admin and shell much more readable.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django ORM — simulated with Python classes

        from datetime import datetime

        class Field:
            def __init__(self, field_type, **options):
                self.field_type = field_type
                self.options = options
                self.null = options.get("null", False)
                self.blank = options.get("blank", False)
                self.default = options.get("default")
                self.max_length = options.get("max_length")

            def validate(self, value):
                if value is None and not self.null:
                    return f"{self.field_type} cannot be null"
                if self.max_length and isinstance(value, str) and len(value) > self.max_length:
                    return f"Max length {self.max_length} exceeded (got {len(value)})"
                return None

        class ModelMeta(type):
            def __new__(cls, name, bases, attrs):
                fields = {k: v for k, v in attrs.items() if isinstance(v, Field)}
                attrs["_fields"] = fields
                attrs["_table"]  = name.lower() + "s"
                attrs["_data"]   = []
                attrs["_pk"]     = 0
                return super().__new__(cls, name, bases, attrs)

        class Model(metaclass=ModelMeta):
            def __init__(self, **kwargs):
                self.pk = None
                for name, field in self._fields.items():
                    val = kwargs.get(name, field.default)
                    setattr(self, name, val)

            def save(self):
                # Validate all fields
                errors = {}
                for name, field in self._fields.items():
                    err = field.validate(getattr(self, name, None))
                    if err: errors[name] = err
                if errors: raise ValueError(f"Validation failed: {errors}")
                if self.pk is None:
                    self.__class__._pk += 1
                    self.pk = self.__class__._pk
                    self.__class__._data.append(self)
                return self

            @classmethod
            def objects_all(cls):
                return list(cls._data)

            @classmethod
            def objects_filter(cls, **kwargs):
                result = cls._data
                for k, v in kwargs.items():
                    result = [obj for obj in result if getattr(obj, k, None) == v]
                return result

            @classmethod
            def objects_get(cls, **kwargs):
                results = cls.objects_filter(**kwargs)
                if len(results) == 1: return results[0]
                if len(results) == 0: raise LookupError(f"{cls.__name__} matching query does not exist.")
                raise ValueError("Multiple objects returned")

        # Define models
        class Post(Model):
            title     = Field("CharField", max_length=200)
            content   = Field("TextField")
            published = Field("BooleanField", default=False)
            views     = Field("IntegerField", default=0)

            def __str__(self):
                return f"Post('{self.title}')"

        class Comment(Model):
            body    = Field("TextField")
            post_id = Field("IntegerField")

            def __str__(self):
                return f"Comment on post {self.post_id}"

        # Create records
        posts_data = [
            {"title": "Getting Started with Django", "content": "Django is a Python web framework...", "published": True, "views": 1250},
            {"title": "ORM Deep Dive",               "content": "The Django ORM is powerful...",       "published": True, "views": 890},
            {"title": "Draft: Testing Guide",        "content": "This is a draft...",                  "published": False, "views": 0},
        ]

        print("Model CRUD Demo")
        print("=" * 45)
        for data in posts_data:
            p = Post(**data).save()
            print(f"  Created: {p} [pk={p.pk}, published={p.published}]")

        # Queries
        print(f"\nAll posts: {len(Post.objects_all())}")
        published = Post.objects_filter(published=True)
        print(f"Published: {[str(p) for p in published]}")

        single = Post.objects_get(pk=1)
        print(f"Get pk=1: {single}, views={single.views}")

        # Validation error
        try:
            Post(title="x" * 201, content="...", published=True).save()
        except ValueError as e:
            print(f"\nValidation caught: {e}")
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Migrations</h1>
        </div>
        <p class="lc-lead">Migrations are Django's version control for your database schema. Every model change becomes a migration file that can be applied, rolled back, and shared with your team.</p>
        <div class="lc-card">
          <h3>Migration Workflow</h3>
          <div class="lc-code"># 1. Make changes to models.py<br># 2. Generate migration file<br>python manage.py makemigrations blog<br><br># 3. Review the generated file<br># blog/migrations/0001_initial.py<br><br># 4. Apply to database<br>python manage.py migrate<br><br># 5. Check status<br>python manage.py showmigrations</div>
        </div>
        <div class="lc-card">
          <h3>A Migration File</h3>
          <div class="lc-code">class Migration(migrations.Migration):<br>    dependencies = [('blog', '0001_initial')]<br>    operations = [<br>        migrations.AddField(<br>            model_name='post',<br>            name='views',<br>            field=models.IntegerField(default=0),<br>        ),<br>        migrations.AlterField(<br>            model_name='post',<br>            name='title',<br>            field=models.CharField(max_length=300),<br>        ),<br>    ]</div>
        </div>
        <div class="lc-card">
          <h3>Essential Commands</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td>makemigrations</td><td>Detect model changes, create migration files</td></tr>
              <tr><td>migrate</td><td>Apply pending migrations to database</td></tr>
              <tr><td>migrate blog 0003</td><td>Migrate to specific version (or rollback)</td></tr>
              <tr><td>showmigrations</td><td>List all migrations and their status</td></tr>
              <tr><td>sqlmigrate blog 0001</td><td>Show the SQL that will be executed</td></tr>
              <tr><td>migrate --fake</td><td>Mark as applied without running SQL</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Never delete migration files from a project in production — you'll break the dependency chain. If you need a clean slate, use <code>squashmigrations</code> to compress many migrations into one.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django migrations system — simulated

        class MigrationOperation:
            def __init__(self, op_type, **kwargs):
                self.op_type = op_type
                self.kwargs  = kwargs

            def describe(self):
                if self.op_type == "CreateTable":
                    fields = ", ".join(self.kwargs.get("fields", []))
                    return f"CREATE TABLE {self.kwargs['table']} ({fields})"
                if self.op_type == "AddField":
                    return f"ALTER TABLE {self.kwargs['table']} ADD COLUMN {self.kwargs['field']} {self.kwargs['type']}"
                if self.op_type == "RemoveField":
                    return f"ALTER TABLE {self.kwargs['table']} DROP COLUMN {self.kwargs['field']}"
                if self.op_type == "AlterField":
                    return f"ALTER TABLE {self.kwargs['table']} ALTER COLUMN {self.kwargs['field']} TYPE {self.kwargs['new_type']}"
                return str(self.kwargs)

        class Migration:
            def __init__(self, app, number, dependencies=None):
                self.app          = app
                self.number       = number
                self.name         = f"{number:04d}"
                self.dependencies = dependencies or []
                self.operations   = []
                self.applied      = False

            def add_op(self, op_type, **kwargs):
                self.operations.append(MigrationOperation(op_type, **kwargs))
                return self

            def apply(self):
                self.applied = True
                return self

            def __str__(self):
                return f"{self.app}.{self.name}"

        class MigrationRunner:
            def __init__(self):
                self.migrations = []
                self.schema     = {}

            def register(self, migration):
                self.migrations.append(migration)

            def migrate(self, target=None):
                pending = [m for m in self.migrations if not m.applied]
                if target:
                    pending = [m for m in pending if m.number <= target]
                applied = []
                for m in pending:
                    deps_ok = all(
                        any(x.app == dep[0] and x.number >= dep[1] and x.applied
                            for x in self.migrations)
                        for dep in m.dependencies
                    ) if m.dependencies else True
                    if deps_ok:
                        for op in m.operations:
                            print(f"  SQL: {op.describe()}")
                        m.apply()
                        applied.append(str(m))
                return applied

            def showmigrations(self):
                for m in self.migrations:
                    status = "[X]" if m.applied else "[ ]"
                    print(f"  {status} {m}")

        # Build migration history
        runner = MigrationRunner()

        m1 = Migration("blog", 1)
        m1.add_op("CreateTable", table="blog_post",
                  fields=["id SERIAL PRIMARY KEY", "title VARCHAR(200)", "content TEXT", "created_at TIMESTAMP"])

        m2 = Migration("blog", 2, dependencies=[("blog", 1)])
        m2.add_op("AddField", table="blog_post", field="slug",      type="VARCHAR(200) UNIQUE")
        m2.add_op("AddField", table="blog_post", field="published", type="BOOLEAN DEFAULT FALSE")

        m3 = Migration("blog", 3, dependencies=[("blog", 2)])
        m3.add_op("AddField",    table="blog_post", field="views", type="INTEGER DEFAULT 0")
        m3.add_op("AlterField",  table="blog_post", field="title", new_type="VARCHAR(300)")

        runner.register(m1)
        runner.register(m2)
        runner.register(m3)

        print("python manage.py migrate")
        print("=" * 45)
        applied = runner.migrate()
        print(f"\nApplied: {applied}")

        print("\npython manage.py showmigrations blog")
        print("blog")
        runner.showmigrations()
      PYTHON
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">QuerySet API</h1>
        </div>
        <p class="lc-lead">Django's QuerySet API lets you build complex database queries in Python. QuerySets are lazy — no SQL runs until you evaluate them.</p>
        <div class="lc-card">
          <h3>Core QuerySet Methods</h3>
          <div class="lc-code">Post.objects.all()                    # All posts<br>Post.objects.filter(published=True)   # WHERE published=TRUE<br>Post.objects.exclude(author=None)     # WHERE author IS NOT NULL<br>Post.objects.get(pk=1)               # Exactly one object<br>Post.objects.first()                 # First result<br>Post.objects.count()                 # COUNT(*)<br>Post.objects.order_by('-created_at') # ORDER BY created_at DESC<br>Post.objects.values('title', 'slug') # SELECT only these columns<br>Post.objects.distinct()              # SELECT DISTINCT</div>
        </div>
        <div class="lc-card">
          <h3>Field Lookups</h3>
          <div class="lc-code">Post.objects.filter(title__contains='Django')  # LIKE '%Django%'<br>Post.objects.filter(title__icontains='django') # Case-insensitive<br>Post.objects.filter(views__gte=100)           # >= 100<br>Post.objects.filter(created_at__year=2024)    # Year filter<br>Post.objects.filter(author__username='alice') # Related field<br>Post.objects.filter(pk__in=[1,2,3])           # IN (1,2,3)</div>
        </div>
        <div class="lc-card">
          <h3>Aggregation and Annotation</h3>
          <div class="lc-code">from django.db.models import Count, Avg, Sum, Max<br><br>Post.objects.aggregate(total=Count('id'), avg_views=Avg('views'))<br>Post.objects.annotate(comment_count=Count('comments'))\<br>            .order_by('-comment_count')</div>
        </div>
        <div class="lc-card">
          <h3>QuerySet Chaining (Lazy)</h3>
          <div class="lc-code">qs = Post.objects.filter(published=True)  # No SQL yet<br>qs = qs.filter(views__gte=100)            # Still no SQL<br>qs = qs.order_by('-views')[:10]          # NOW SQL executes</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>select_related()</code> for ForeignKey relations and <code>prefetch_related()</code> for ManyToMany — they eliminate N+1 queries, the most common Django performance problem.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # QuerySet API — simulated with Python

        class QuerySet:
            def __init__(self, data, model_name="Model"):
                self._data  = list(data)
                self._model = model_name
                self._sql_parts = []

            def filter(self, **kwargs):
                result = self._data
                for key, val in kwargs.items():
                    parts = key.split("__")
                    field = parts[0]
                    lookup = parts[1] if len(parts) > 1 else "exact"
                    if lookup == "exact":
                        result = [r for r in result if r.get(field) == val]
                    elif lookup == "gte":
                        result = [r for r in result if r.get(field, 0) >= val]
                    elif lookup == "lte":
                        result = [r for r in result if r.get(field, 0) <= val]
                    elif lookup == "gt":
                        result = [r for r in result if r.get(field, 0) > val]
                    elif lookup == "icontains":
                        result = [r for r in result if val.lower() in str(r.get(field, "")).lower()]
                    elif lookup == "in":
                        result = [r for r in result if r.get(field) in val]
                self._sql_parts.append(f"filter({kwargs})")
                return QuerySet(result, self._model)

            def exclude(self, **kwargs):
                key, val = list(kwargs.items())[0]
                result = [r for r in self._data if r.get(key) != val]
                return QuerySet(result, self._model)

            def order_by(self, field):
                desc = field.startswith("-")
                col  = field.lstrip("-")
                result = sorted(self._data, key=lambda r: r.get(col, 0), reverse=desc)
                return QuerySet(result, self._model)

            def values(self, *fields):
                result = [{f: r.get(f) for f in fields} for r in self._data]
                return result

            def count(self):    return len(self._data)
            def first(self):    return self._data[0] if self._data else None
            def all(self):      return QuerySet(self._data, self._model)
            def __len__(self):  return len(self._data)
            def __iter__(self): return iter(self._data)
            def __getitem__(self, s): return QuerySet(self._data[s], self._model) if isinstance(s, slice) else self._data[s]

            def aggregate(self, **kwargs):
                result = {}
                for name, expr in kwargs.items():
                    fn, field = expr
                    vals = [r.get(field, 0) for r in self._data if r.get(field) is not None]
                    if fn == "Count": result[name] = len(vals)
                    elif fn == "Sum": result[name] = sum(vals)
                    elif fn == "Avg": result[name] = sum(vals) / len(vals) if vals else 0
                    elif fn == "Max": result[name] = max(vals) if vals else None
                return result

        # Sample data (like Post.objects.all())
        posts = [
            {"id":1, "title":"Django ORM Guide",    "views":1250, "published":True,  "author":"alice", "category":"tutorial"},
            {"id":2, "title":"Python Type Hints",   "views":890,  "published":True,  "author":"bob",   "category":"python"},
            {"id":3, "title":"Django REST API",     "views":2100, "published":True,  "author":"alice", "category":"tutorial"},
            {"id":4, "title":"Draft: Testing",      "views":0,    "published":False, "author":"alice", "category":"testing"},
            {"id":5, "title":"Celery Tasks",        "views":450,  "published":True,  "author":"carol", "category":"tutorial"},
            {"id":6, "title":"Django Deployment",   "views":1800, "published":True,  "author":"bob",   "category":"devops"},
        ]

        qs = QuerySet(posts, "Post")

        print("QuerySet API Demo")
        print("=" * 50)

        # filter + order_by
        print("\nPublished posts, ordered by views DESC:")
        result = qs.filter(published=True).order_by("-views")
        for p in result[:3]:
            print(f"  {p['title']:<30} views={p['views']}")

        # icontains
        print("\nPosts containing 'django' (case-insensitive):")
        django_posts = qs.filter(title__icontains="django")
        for p in django_posts:
            print(f"  {p['title']}")

        # filter by author + views threshold
        print("\nAlice's posts with 1000+ views:")
        alice_popular = qs.filter(author="alice").filter(views__gte=1000)
        for p in alice_popular:
            print(f"  {p['title']} ({p['views']} views)")

        # aggregate
        print("\nAggregate stats:")
        stats = qs.filter(published=True).aggregate(
            total=("Count", "id"), total_views=("Sum", "views"), avg_views=("Avg", "views")
        )
        for k, v in stats.items():
            print(f"  {k}: {round(v, 1) if isinstance(v, float) else v}")

        # values
        print("\nvalues('title', 'author') on tutorials:")
        tutorials = qs.filter(category="tutorial").values("title", "author")
        for t in tutorials:
            print(f"  {t}")
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Django Admin</h1>
        </div>
        <p class="lc-lead">Django's admin is a fully-featured content management interface generated automatically from your models. Register a model and get a complete CRUD UI in minutes.</p>
        <div class="lc-card">
          <h3>Basic Registration</h3>
          <div class="lc-code">from django.contrib import admin<br>from .models import Post, Comment<br><br>admin.site.register(Post)      # Auto-generated admin<br>admin.site.register(Comment)</div>
        </div>
        <div class="lc-card">
          <h3>Customising with ModelAdmin</h3>
          <div class="lc-code">@admin.register(Post)<br>class PostAdmin(admin.ModelAdmin):<br>    list_display   = ['title', 'author', 'published', 'views', 'created_at']<br>    list_filter    = ['published', 'author', 'created_at']<br>    search_fields  = ['title', 'content']<br>    prepopulated_fields = {'slug': ('title',)}<br>    list_editable  = ['published']<br>    ordering       = ['-created_at']<br>    date_hierarchy = 'created_at'<br>    actions        = ['publish_posts']<br><br>    def publish_posts(self, request, queryset):<br>        queryset.update(published=True)</div>
        </div>
        <div class="lc-card">
          <h3>Inline Admin</h3>
          <div class="lc-code">class CommentInline(admin.TabularInline):<br>    model  = Comment<br>    extra  = 1   # extra empty forms<br><br>@admin.register(Post)<br>class PostAdmin(admin.ModelAdmin):<br>    inlines = [CommentInline]  # Edit comments inside post</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The admin is for internal staff tools, not end-users. Secure it at a non-default URL: <code>admin.site.urls</code> → <code>path('secret-admin/', admin.site.urls)</code> and use two-factor auth.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django Admin — simulated

        class AdminConfig:
            def __init__(self, model_name):
                self.model_name        = model_name
                self.list_display      = ["id", "__str__"]
                self.list_filter       = []
                self.search_fields     = []
                self.list_editable     = []
                self.ordering          = []
                self.actions           = []
                self.inlines           = []
                self.prepopulated      = {}

            def describe(self):
                print(f"\n  Model: {self.model_name}")
                print(f"  List columns:  {self.list_display}")
                print(f"  Filters:       {self.list_filter}")
                print(f"  Search fields: {self.search_fields}")
                print(f"  Editable:      {self.list_editable}")
                print(f"  Actions:       {[a.__name__ if callable(a) else a for a in self.actions]}")
                if self.inlines:
                    print(f"  Inlines:       {self.inlines}")

        class AdminSite:
            def __init__(self):
                self.registry = {}

            def register(self, model_name, config=None):
                cfg = config or AdminConfig(model_name)
                self.registry[model_name] = cfg

            def generate_urls(self):
                urls = []
                for model in self.registry:
                    base = model.lower()
                    urls += [
                        f"admin/{base}/",
                        f"admin/{base}/add/",
                        f"admin/{base}/<id>/change/",
                        f"admin/{base}/<id>/delete/",
                    ]
                return urls

        # Simulate custom admin configurations
        def publish_posts(modeladmin, request, queryset):
            """Custom admin action."""
            pass

        def unpublish_posts(modeladmin, request, queryset):
            pass

        post_admin = AdminConfig("Post")
        post_admin.list_display  = ["title", "author", "published", "views", "created_at"]
        post_admin.list_filter   = ["published", "author"]
        post_admin.search_fields = ["title", "content"]
        post_admin.list_editable = ["published"]
        post_admin.ordering      = ["-created_at"]
        post_admin.actions       = [publish_posts, unpublish_posts]
        post_admin.prepopulated   = {"slug": ("title",)}
        post_admin.inlines        = ["CommentInline"]

        comment_admin = AdminConfig("Comment")
        comment_admin.list_display  = ["body", "post", "author", "created_at"]
        comment_admin.list_filter   = ["author"]
        comment_admin.search_fields = ["body"]

        site = AdminSite()
        site.register("Post",    post_admin)
        site.register("Comment", comment_admin)
        site.register("Tag")  # Default config

        print("Django Admin Registry")
        print("=" * 45)
        for name, cfg in site.registry.items():
            cfg.describe()

        print("\nGenerated Admin URLs:")
        for url in site.generate_urls():
            print(f"  /{url}")

        # Simulate admin list view data
        posts = [
            {"id":1, "title":"Django ORM Guide",  "author":"alice", "published":True,  "views":1250},
            {"id":2, "title":"REST API Tutorial",  "author":"alice", "published":True,  "views":2100},
            {"id":3, "title":"Draft Post",         "author":"bob",   "published":False, "views":0},
        ]
        print("\nAdmin list view (Post):")
        print(f"  {'ID':<5} {'Title':<25} {'Author':<10} {'Published':<12} {'Views'}")
        print("  " + "-" * 60)
        for p in posts:
            pub = "✅" if p["published"] else "❌"
            print(f"  {p['id']:<5} {p['title']:<25} {p['author']:<10} {pub:<12} {p['views']}")
      PYTHON
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Forms and Validation</h1>
        </div>
        <p class="lc-lead">Django forms handle input validation, sanitisation, and rendering. ModelForm generates a form directly from a model — the fastest way to build CRUD interfaces.</p>
        <div class="lc-card">
          <h3>Form Class</h3>
          <div class="lc-code">from django import forms<br><br>class ContactForm(forms.Form):<br>    name    = forms.CharField(max_length=100)<br>    email   = forms.EmailField()<br>    message = forms.CharField(widget=forms.Textarea, min_length=20)<br>    subject = forms.ChoiceField(choices=[('bug','Bug'), ('feature','Feature')])<br><br>    def clean_email(self):<br>        email = self.cleaned_data['email']<br>        if email.endswith('@spam.com'):<br>            raise forms.ValidationError("No spam emails allowed")<br>        return email.lower()</div>
        </div>
        <div class="lc-card">
          <h3>ModelForm</h3>
          <div class="lc-code">class PostForm(forms.ModelForm):<br>    class Meta:<br>        model  = Post<br>        fields = ['title', 'content', 'published']<br>        # or: exclude = ['author', 'created_at']<br>        widgets = {'content': forms.Textarea(attrs={'rows': 10})}</div>
        </div>
        <div class="lc-card">
          <h3>Using Forms in Views</h3>
          <div class="lc-code">def create_post(request):<br>    if request.method == 'POST':<br>        form = PostForm(request.POST)<br>        if form.is_valid():<br>            post = form.save(commit=False)<br>            post.author = request.user<br>            post.save()<br>            return redirect('post-detail', pk=post.pk)<br>    else:<br>        form = PostForm()<br>    return render(request, 'create_post.html', {'form': form})</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always use <code>commit=False</code> with <code>form.save()</code> when you need to add extra fields (like <code>author</code>) before saving to the database.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django Forms and Validation — simulated

        class ValidationError(Exception):
            pass

        class Field:
            def __init__(self, required=True, max_length=None, min_length=None):
                self.required   = required
                self.max_length = max_length
                self.min_length = min_length

            def validate(self, name, value):
                if self.required and not value:
                    raise ValidationError(f"{name}: This field is required.")
                if value and self.max_length and len(str(value)) > self.max_length:
                    raise ValidationError(f"{name}: Max {self.max_length} chars (got {len(value)})")
                if value and self.min_length and len(str(value)) < self.min_length:
                    raise ValidationError(f"{name}: Min {self.min_length} chars")
                return value

        class EmailField(Field):
            def validate(self, name, value):
                value = super().validate(name, value)
                if value and "@" not in value:
                    raise ValidationError(f"{name}: Enter a valid email address.")
                return value.lower() if value else value

        class ChoiceField(Field):
            def __init__(self, choices, **kwargs):
                super().__init__(**kwargs)
                self.valid = [c[0] for c in choices]

            def validate(self, name, value):
                value = super().validate(name, value)
                if value and value not in self.valid:
                    raise ValidationError(f"{name}: '{value}' is not a valid choice. Choose from {self.valid}")
                return value

        class Form:
            def __init__(self, data=None):
                self.data         = data or {}
                self.cleaned_data = {}
                self.errors       = {}
                self._declared_fields = {
                    k: v for k, v in self.__class__.__dict__.items()
                    if isinstance(v, Field)
                }

            def is_valid(self):
                self.errors       = {}
                self.cleaned_data = {}
                for name, field in self._declared_fields.items():
                    try:
                        val = self.data.get(name, "")
                        cleaned = field.validate(name, val)
                        # Call custom clean_<field> if defined
                        cleaner = getattr(self, f"clean_{name}", None)
                        self.cleaned_data[name] = cleaner(cleaned) if cleaner else cleaned
                    except ValidationError as e:
                        self.errors[name] = str(e)
                return len(self.errors) == 0

            def save(self):
                return self.cleaned_data

        # Define forms
        class ContactForm(Form):
            name    = Field(required=True, max_length=100)
            email   = EmailField(required=True)
            message = Field(required=True, min_length=20)
            subject = ChoiceField(choices=[("bug", "Bug"), ("feature", "Feature")], required=True)

            def clean_email(self, value):
                if value and "spam.com" in value:
                    raise ValidationError("email: Spam emails not allowed.")
                return value

        class PostForm(Form):
            title   = Field(required=True, max_length=200)
            content = Field(required=True, min_length=10)

        # Test validation
        test_submissions = [
            {
                "label": "Valid contact",
                "data": {"name":"Alice","email":"alice@example.com","message":"I found a bug in the login form. It crashes on Safari.","subject":"bug"},
            },
            {
                "label": "Missing required fields",
                "data": {"name":"","email":"","message":"","subject":""},
            },
            {
                "label": "Invalid email",
                "data": {"name":"Bob","email":"not-an-email","message":"Feature request here please...","subject":"feature"},
            },
            {
                "label": "Spam email",
                "data": {"name":"Spammer","email":"x@spam.com","message":"Buy cheap stuff now click here!","subject":"feature"},
            },
        ]

        print("Form Validation Demo")
        print("=" * 50)
        for sub in test_submissions:
            form = ContactForm(sub["data"])
            valid = form.is_valid()
            print(f"\n[{sub['label']}]")
            if valid:
                print(f"  ✅ Valid! cleaned_data:")
                for k, v in form.cleaned_data.items():
                    print(f"     {k}: {v}")
            else:
                print(f"  ❌ Errors:")
                for k, v in form.errors.items():
                    print(f"     {v}")
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Class-Based Views</h1>
        </div>
        <p class="lc-lead">Class-Based Views (CBVs) reduce boilerplate for common patterns. Django's generic views handle list, detail, create, update, and delete out of the box.</p>
        <div class="lc-card">
          <h3>Generic CBVs</h3>
          <div class="lc-code">from django.views.generic import (ListView, DetailView,<br>    CreateView, UpdateView, DeleteView, TemplateView)<br><br>class PostListView(ListView):<br>    model               = Post<br>    template_name       = 'blog/post_list.html'<br>    context_object_name = 'posts'<br>    paginate_by         = 10<br>    queryset            = Post.objects.filter(published=True).order_by('-created_at')<br><br>class PostCreateView(CreateView):<br>    model      = Post<br>    form_class = PostForm<br>    success_url = '/posts/'</div>
        </div>
        <div class="lc-card">
          <h3>CBV vs FBV</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>FBV</th><th>CBV</th></tr></thead>
            <tbody>
              <tr><td>Boilerplate</td><td>More code</td><td>Less code (inheritance)</td></tr>
              <tr><td>Readability</td><td>Explicit, easy to follow</td><td>Implicit via mixins</td></tr>
              <tr><td>Customisation</td><td>Easy, just write Python</td><td>Override specific methods</td></tr>
              <tr><td>Best for</td><td>Complex, unique logic</td><td>Standard CRUD operations</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Mixins</h3>
          <div class="lc-code">from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin<br><br>class PostCreateView(LoginRequiredMixin, CreateView):<br>    login_url = '/login/'  # Redirect if not authenticated<br>    model     = Post</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Override <code>get_queryset()</code> to filter by current user, <code>get_context_data()</code> to add extra context, and <code>form_valid()</code> to add custom logic after successful form submission.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Class-Based Views — simulated

        class View:
            http_method_names = ["get", "post", "put", "patch", "delete"]

            def dispatch(self, request, **kwargs):
                method = request.get("method", "GET").lower()
                handler = getattr(self, method, self.http_method_not_allowed)
                return handler(request, **kwargs)

            def http_method_not_allowed(self, request, **kwargs):
                return {"status": 405, "body": "Method Not Allowed"}

        class TemplateView(View):
            template_name = None

            def get(self, request, **kwargs):
                ctx = self.get_context_data(**kwargs)
                return {"status": 200, "template": self.template_name, "context": ctx}

            def get_context_data(self, **kwargs):
                return {}

        class ListView(TemplateView):
            model               = None
            queryset            = None
            context_object_name = "object_list"
            paginate_by         = None

            def get_queryset(self):
                return self.queryset if self.queryset is not None else []

            def get_context_data(self, **kwargs):
                qs = self.get_queryset()
                ctx = {self.context_object_name: qs}
                if self.paginate_by:
                    page = kwargs.get("page", 1)
                    start = (page - 1) * self.paginate_by
                    ctx[self.context_object_name] = qs[start:start + self.paginate_by]
                    ctx["page"] = page
                    ctx["total_pages"] = (len(qs) + self.paginate_by - 1) // self.paginate_by
                return ctx

        class DetailView(TemplateView):
            def get(self, request, pk=None, **kwargs):
                data = self.get_object(pk)
                if not data:
                    return {"status": 404, "body": "Not Found"}
                return {"status": 200, "template": self.template_name, "context": {self.context_object_name: data}}

            context_object_name = "object"
            _data = []

            def get_object(self, pk):
                return next((d for d in self._data if d.get("id") == int(pk)), None)

        # Mixin
        class LoginRequiredMixin:
            def dispatch(self, request, **kwargs):
                if not request.get("user"):
                    return {"status": 302, "redirect": "/login/"}
                return super().dispatch(request, **kwargs)

        # Sample data
        POSTS = [
            {"id":i,"title":f"Post {i}","published":True,"views":i*100}
            for i in range(1, 8)
        ]

        # Concrete views
        class PostListView(ListView):
            template_name       = "blog/post_list.html"
            context_object_name = "posts"
            paginate_by         = 3

            def get_queryset(self):
                return [p for p in POSTS if p["published"]]

        class PostDetailView(DetailView):
            template_name       = "blog/post_detail.html"
            context_object_name = "post"
            _data               = POSTS

        class SecretView(LoginRequiredMixin, TemplateView):
            template_name = "secret.html"

            def get_context_data(self, **kwargs):
                return {"message": "Secret content!"}

        # Test the CBVs
        print("Class-Based Views Demo")
        print("=" * 50)

        # ListView with pagination
        list_view = PostListView()
        for page in [1, 2, 3]:
            req = {"method": "GET"}
            resp = list_view.dispatch(req, page=page)
            posts = resp["context"]["posts"]
            total = resp["context"]["total_pages"]
            print(f"\nGET /posts/?page={page} → Page {page}/{total}: {[p['title'] for p in posts]}")

        # DetailView
        detail_view = PostDetailView()
        for pk in [3, 99]:
            req  = {"method": "GET"}
            resp = detail_view.dispatch(req, pk=pk)
            print(f"\nGET /posts/{pk}/ → {resp['status']}: {resp.get('context', {}).get('post', {}).get('title', resp.get('body'))}")

        # Login required
        secret = SecretView()
        print("\nGET /secret/ (anonymous):", secret.dispatch({"method":"GET"})["status"])
        print("GET /secret/ (logged in):", secret.dispatch({"method":"GET","user":"alice"})["status"])
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Authentication and Permissions</h1>
        </div>
        <p class="lc-lead">Django ships with a complete authentication system — users, groups, permissions, sessions, and password hashing. You get secure auth without writing a line of security code.</p>
        <div class="lc-card">
          <h3>Built-in Auth Views</h3>
          <div class="lc-code">from django.contrib.auth import views as auth_views<br><br>urlpatterns = [<br>    path('login/',    auth_views.LoginView.as_view(), name='login'),<br>    path('logout/',   auth_views.LogoutView.as_view(), name='logout'),<br>    path('password/', auth_views.PasswordChangeView.as_view(), name='password'),<br>]</div>
        </div>
        <div class="lc-card">
          <h3>Protecting Views</h3>
          <div class="lc-code"># Decorator (FBV)<br>from django.contrib.auth.decorators import login_required, permission_required<br><br>@login_required<br>def dashboard(request): ...<br><br>@permission_required('blog.can_publish')<br>def publish_post(request, pk): ...<br><br># Mixin (CBV)<br>class DashboardView(LoginRequiredMixin, View): ...</div>
        </div>
        <div class="lc-card">
          <h3>Custom User Model (best practice)</h3>
          <div class="lc-code"># Always do this BEFORE first migration<br>class CustomUser(AbstractUser):<br>    bio    = models.TextField(blank=True)<br>    avatar = models.ImageField(upload_to='avatars/', null=True)<br><br># settings.py<br>AUTH_USER_MODEL = 'accounts.CustomUser'</div>
        </div>
        <div class="lc-card">
          <h3>Permissions</h3>
          <div class="lc-code">user.has_perm('blog.add_post')     # Can create posts<br>user.has_perm('blog.change_post')  # Can edit posts<br>user.has_perm('blog.delete_post')  # Can delete posts<br>user.groups.add(editors_group)     # Assign to group</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always extend the User model from day one using <code>AbstractUser</code>. Adding custom fields to the default User model later requires complex data migrations.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django Authentication — simulated

        import hashlib

        def hash_password(password):
            """Simulate Django's PBKDF2 password hashing."""
            salt = "django_salt_sim"
            return "pbkdf2_sha256$" + hashlib.sha256((salt + password).encode()).hexdigest()[:20]

        def check_password(password, hashed):
            return hash_password(password) == hashed

        class Permission:
            def __init__(self, codename):
                self.codename = codename

        class Group:
            def __init__(self, name, permissions=None):
                self.name        = name
                self.permissions = set(permissions or [])

        class User:
            def __init__(self, username, password, email, is_staff=False, is_superuser=False):
                self.username      = username
                self.password      = hash_password(password)
                self.email         = email
                self.is_staff      = is_staff
                self.is_superuser  = is_superuser
                self.is_active     = True
                self.is_authenticated = False
                self.groups        = []
                self._user_perms   = set()

            def check_password(self, raw_password):
                return check_password(raw_password, self.password)

            def has_perm(self, perm):
                if self.is_superuser: return True
                if perm in self._user_perms: return True
                for group in self.groups:
                    if perm in group.permissions: return True
                return False

            def has_any_perm(self, perms):
                return any(self.has_perm(p) for p in perms)

        class AuthBackend:
            def __init__(self, users):
                self._users   = {u.username: u for u in users}
                self._sessions = {}

            def authenticate(self, username, password):
                user = self._users.get(username)
                if user and user.is_active and user.check_password(password):
                    user.is_authenticated = True
                    token = hash_password(username + password)[:12]
                    self._sessions[token] = user
                    return user, token
                return None, None

            def logout(self, token):
                user = self._sessions.pop(token, None)
                if user: user.is_authenticated = False

        # Setup
        editors_group = Group("Editors", {"blog.add_post", "blog.change_post"})
        admin_group   = Group("Admins",  {"blog.add_post", "blog.change_post", "blog.delete_post"})

        users = [
            User("alice", "secret123", "alice@ex.com", is_staff=True),
            User("bob",   "pass456",   "bob@ex.com"),
            User("admin", "admin!",    "admin@ex.com", is_superuser=True),
        ]
        users[0].groups = [editors_group]  # alice in editors
        users[2].groups = [admin_group]    # admin in admins

        auth = AuthBackend(users)

        print("Authentication System Demo")
        print("=" * 50)

        # Login attempts
        attempts = [
            ("alice", "secret123"),  # Valid
            ("bob",   "wrongpass"),  # Wrong password
            ("ghost", "anything"),   # Unknown user
            ("admin", "admin!"),     # Superuser
        ]

        sessions = {}
        for username, password in attempts:
            user, token = auth.authenticate(username, password)
            if user:
                sessions[username] = token
                print(f"✅ Login '{username}': authenticated, token={token}")
            else:
                print(f"❌ Login '{username}': failed")

        # Permission checks
        print("\nPermission Checks:")
        perms_to_check = ["blog.add_post", "blog.change_post", "blog.delete_post"]
        for user in users:
            print(f"\n  {user.username} (superuser={user.is_superuser}, groups={[g.name for g in user.groups]}):")
            for perm in perms_to_check:
                result = "✅" if user.has_perm(perm) else "❌"
                print(f"    {result} {perm}")

        # Logout
        print("\nLogout alice:")
        auth.logout(sessions.get("alice", ""))
        alice = users[0]
        print(f"  is_authenticated: {alice.is_authenticated}")
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Templates and Template Language</h1>
        </div>
        <p class="lc-lead">Django templates turn Python data into HTML. They are intentionally limited so presentation stays separate from business logic.</p>
        <div class="lc-card">
          <h3>Template Basics</h3>
          <div class="lc-code">{% extends "base.html" %}<br>{% block content %}<br>  &lt;h1&gt;{{ post.title }}&lt;/h1&gt;<br>  {% if post.published %}<br>    &lt;p&gt;{{ post.body|truncatewords:30 }}&lt;/p&gt;<br>  {% endif %}<br>{% endblock %}</div>
        </div>
        <div class="lc-card">
          <h3>Useful Template Tags</h3>
          <table class="lc-table">
            <thead><tr><th>Tag / Filter</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td>{% for %}</td><td>Loop through lists and QuerySets</td></tr>
              <tr><td>{% if %}</td><td>Conditional rendering</td></tr>
              <tr><td>{% include %}</td><td>Reuse partial templates</td></tr>
              <tr><td>{% url %}</td><td>Generate links from URL names</td></tr>
              <tr><td>|date</td><td>Format dates for display</td></tr>
              <tr><td>|truncatewords</td><td>Shorten long text</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep heavy logic out of templates. If a template starts becoming “smart”, move that logic into the view, model method, or a custom template tag.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django template rendering — simulated

        import re

        def render_template(template, context):
            output = template

            # Variable substitution: {{ key }}
            output = re.sub(
                r"{{\s*(\w+)\s*}}",
                lambda m: str(context.get(m.group(1), "")),
                output
            )
            return output

        post = {
            "title": "Django Templates",
            "author": "Adarsh",
            "summary": "Templates help turn data into clean HTML pages."
        }

        template = """
        <article>
          <h1>{{ title }}</h1>
          <p>By {{ author }}</p>
          <p>{{ summary }}</p>
        </article>
        """

        print("Rendered Template")
        print("=" * 40)
        print(render_template(template, post))
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Static Files and Media</h1>
        </div>
        <p class="lc-lead">Static files are your CSS, JavaScript, and images. Media files are user uploads like profile photos and documents. Django handles them differently.</p>
        <div class="lc-card">
          <h3>Static vs Media</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Examples</th><th>Settings</th></tr></thead>
            <tbody>
              <tr><td>Static</td><td>CSS, JS, logos, icons</td><td>STATIC_URL, STATICFILES_DIRS</td></tr>
              <tr><td>Media</td><td>User profile images, PDFs, uploads</td><td>MEDIA_URL, MEDIA_ROOT</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Typical Setup</h3>
          <div class="lc-code">STATIC_URL = '/static/'<br>STATIC_ROOT = BASE_DIR / 'staticfiles'<br>MEDIA_URL = '/media/'<br>MEDIA_ROOT = BASE_DIR / 'media'<br><br>{% load static %}<br>&lt;link rel="stylesheet" href="{% static 'css/site.css' %}"&gt;</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In production, serve static files with WhiteNoise or a CDN. Never let Django serve large media files directly at scale.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django static/media config — simulated

        from pathlib import Path

        BASE_DIR = Path("/project")

        settings = {
            "STATIC_URL": "/static/",
            "STATIC_ROOT": BASE_DIR / "staticfiles",
            "MEDIA_URL": "/media/",
            "MEDIA_ROOT": BASE_DIR / "media",
        }

        files = [
            ("static", "css/site.css"),
            ("static", "js/app.js"),
            ("media", "avatars/adarsh.png"),
            ("media", "docs/report.pdf"),
        ]

        print("Django Asset Paths")
        print("=" * 40)
        for kind, file_path in files:
            if kind == "static":
                url = settings["STATIC_URL"] + file_path
            else:
                url = settings["MEDIA_URL"] + file_path
            print(f"{kind.upper():<6} {file_path:<24} → {url}")
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Generic Editing Views</h1>
        </div>
        <p class="lc-lead">Django's generic editing views save time for CRUD screens. They handle common form workflows like create, update, and delete with very little code.</p>
        <div class="lc-card">
          <h3>Main Generic Editing Views</h3>
          <table class="lc-table">
            <thead><tr><th>View</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>CreateView</td><td>Create a new model object</td></tr>
              <tr><td>UpdateView</td><td>Edit an existing model object</td></tr>
              <tr><td>DeleteView</td><td>Delete an object with confirmation</td></tr>
              <tr><td>FormView</td><td>Use a plain form not tied to a model</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Example</h3>
          <div class="lc-code">class PostCreateView(LoginRequiredMixin, CreateView):<br>    model = Post<br>    fields = ['title', 'content']<br>    template_name = 'blog/post_form.html'<br>    success_url = reverse_lazy('post-list')<br><br>    def form_valid(self, form):<br>        form.instance.author = self.request.user<br>        return super().form_valid(form)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use generic views when the behavior is standard. If you keep overriding many methods, a custom class-based or function-based view may be clearer.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Generic editing views — simulated

        class CreateView:
            def __init__(self, model_name, fields):
                self.model_name = model_name
                self.fields = fields

            def post(self, data):
                missing = [field for field in self.fields if not data.get(field)]
                if missing:
                    return {"status": 400, "errors": missing}
                return {"status": 201, "message": f"{self.model_name} created", "data": data}

        class UpdateView:
            def __init__(self, model_name):
                self.model_name = model_name

            def post(self, obj_id, data):
                return {"status": 200, "message": f"{self.model_name} #{obj_id} updated", "changes": data}

        creator = CreateView("Post", ["title", "body"])
        updater = UpdateView("Post")

        print(creator.post({"title": "Django CBVs", "body": "Editing views are productive."}))
        print(creator.post({"title": "Missing body"}))
        print(updater.post(7, {"title": "Updated title"}))
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Sessions and Messages</h1>
        </div>
        <p class="lc-lead">Sessions let Django remember data between requests. The messages framework lets you show one-time notifications like “Saved successfully” after redirects.</p>
        <div class="lc-card">
          <h3>Sessions</h3>
          <div class="lc-code">def add_to_cart(request, product_id):<br>    cart = request.session.get('cart', [])<br>    cart.append(product_id)<br>    request.session['cart'] = cart</div>
        </div>
        <div class="lc-card">
          <h3>Messages</h3>
          <div class="lc-code">from django.contrib import messages<br><br>messages.success(request, \"Post created successfully\")<br>messages.error(request, \"Please fix the form errors\")<br>messages.info(request, \"Welcome back\")</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use sessions for per-user temporary state, not as a replacement for database models. Keep session data small and focused.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django sessions and messages — simulated

        class Request:
            def __init__(self):
                self.session = {}
                self.messages = []

        def add_message(request, level, text):
            request.messages.append({"level": level, "text": text})

        request = Request()

        cart = request.session.get("cart", [])
        cart.extend([101, 205, 101])
        request.session["cart"] = cart

        add_message(request, "success", "Added product to cart")
        add_message(request, "info", "Cart saved in session")

        print("Session Data:", request.session)
        print("Messages:")
        for msg in request.messages:
            print(f" - [{msg['level'].upper()}] {msg['text']}")
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Middleware</h1>
        </div>
        <p class="lc-lead">Middleware sits between the request and the response. It is perfect for cross-cutting concerns like authentication, logging, security headers, and timing.</p>
        <div class="lc-card">
          <h3>Middleware Flow</h3>
          <div class="lc-code">Request → SecurityMiddleware → SessionMiddleware → AuthenticationMiddleware → Your View → Response</div>
        </div>
        <div class="lc-card">
          <h3>Custom Middleware</h3>
          <div class="lc-code">class TimingMiddleware:<br>    def __init__(self, get_response):<br>        self.get_response = get_response<br><br>    def __call__(self, request):<br>        start = time.time()<br>        response = self.get_response(request)<br>        response['X-Time'] = time.time() - start<br>        return response</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep middleware fast. It runs on every request, so expensive logic there slows down your entire site.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django middleware pipeline — simulated

        class Request:
            def __init__(self, path):
                self.path = path
                self.meta = {}

        class Response(dict):
            pass

        def view(request):
            return Response(status=200, body=f"Handled {request.path}")

        def timing_middleware(get_response):
            def middleware(request):
                request.meta["timing_started"] = True
                response = get_response(request)
                response["X-Timing"] = "enabled"
                return response
            return middleware

        def auth_middleware(get_response):
            def middleware(request):
                request.meta["user"] = "adarsh"
                return get_response(request)
            return middleware

        app = timing_middleware(auth_middleware(view))
        response = app(Request("/dashboard/"))

        print("Middleware Response")
        print("=" * 30)
        for key, value in response.items():
            print(f"{key}: {value}")
      PYTHON
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Testing Django Apps</h1>
        </div>
        <p class="lc-lead">Django ships with a strong testing framework. Good tests protect your models, views, permissions, and forms as your app grows.</p>
        <div class="lc-card">
          <h3>Common Test Types</h3>
          <table class="lc-table">
            <thead><tr><th>Test</th><th>What it checks</th></tr></thead>
            <tbody>
              <tr><td>Model tests</td><td>Validation, helper methods, query logic</td></tr>
              <tr><td>View tests</td><td>Status codes, template rendering, permissions</td></tr>
              <tr><td>Form tests</td><td>Valid and invalid submissions</td></tr>
              <tr><td>Integration tests</td><td>End-to-end workflows</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Example</h3>
          <div class="lc-code">from django.test import TestCase<br>from django.urls import reverse<br><br>class PostTests(TestCase):<br>    def test_home_page_loads(self):<br>        response = self.client.get(reverse('index'))<br>        self.assertEqual(response.status_code, 200)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Write tests for bugs you fix. That turns every mistake into long-term protection for the project.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django tests — simulated

        def assert_equal(actual, expected, label):
            if actual == expected:
                print(f"✅ {label}")
            else:
                print(f"❌ {label}: expected {expected}, got {actual}")

        def home_page():
            return {"status": 200, "template": "index.html"}

        def login_required(user):
            return 200 if user.get("authenticated") else 302

        response = home_page()
        assert_equal(response["status"], 200, "Home page loads")
        assert_equal(response["template"], "index.html", "Correct template used")
        assert_equal(login_required({"authenticated": False}), 302, "Anonymous user redirected")
        assert_equal(login_required({"authenticated": True}), 200, "Logged-in user allowed")
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Django REST Basics</h1>
        </div>
        <p class="lc-lead">Many Django projects expose APIs as well as HTML pages. Django REST Framework builds on Django to create serializers, API views, permissions, and browsable APIs.</p>
        <div class="lc-card">
          <h3>Core DRF Pieces</h3>
          <table class="lc-table">
            <thead><tr><th>Piece</th><th>Role</th></tr></thead>
            <tbody>
              <tr><td>Serializer</td><td>Converts model instances to and from JSON</td></tr>
              <tr><td>APIView / ViewSet</td><td>Handles HTTP methods for API endpoints</td></tr>
              <tr><td>Router</td><td>Auto-generates URL patterns for viewsets</td></tr>
              <tr><td>Permission classes</td><td>Controls who can access endpoints</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Example</h3>
          <div class="lc-code">class PostSerializer(serializers.ModelSerializer):<br>    class Meta:<br>        model = Post<br>        fields = ['id', 'title', 'content']<br><br>class PostViewSet(ModelViewSet):<br>    queryset = Post.objects.all()<br>    serializer_class = PostSerializer</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> DRF is ideal when your Django backend serves mobile apps, React frontends, or public APIs in addition to templates.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django REST concepts — simulated

        class PostSerializer:
            fields = ["id", "title", "body"]

            def to_dict(self, obj):
                return {field: obj.get(field) for field in self.fields}

        class PostAPI:
            def __init__(self, posts):
                self.posts = posts
                self.serializer = PostSerializer()

            def list(self):
                return [self.serializer.to_dict(post) for post in self.posts]

        posts = [
            {"id": 1, "title": "Intro to Django", "body": "Build web apps fast.", "draft": False},
            {"id": 2, "title": "REST APIs", "body": "Serve JSON from Django.", "draft": True},
        ]

        api = PostAPI(posts)
        print("Serialized API Response")
        print("=" * 40)
        for row in api.list():
            print(row)
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Performance and Caching</h1>
        </div>
        <p class="lc-lead">As traffic grows, Django performance matters. Caching helps avoid repeating expensive queries or rendering work on every request.</p>
        <div class="lc-card">
          <h3>Cache Levels</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>Site-wide cache</td><td>Cache full pages</td></tr>
              <tr><td>Per-view cache</td><td>Cache selected views</td></tr>
              <tr><td>Template fragment cache</td><td>Cache expensive page sections</td></tr>
              <tr><td>Low-level cache API</td><td>Cache arbitrary Python values</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Example</h3>
          <div class="lc-code">from django.views.decorators.cache import cache_page<br><br>@cache_page(60 * 5)<br>def post_list(request):<br>    posts = Post.objects.select_related('author').all()<br>    return render(request, 'blog/list.html', {'posts': posts})</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Fix N+1 queries before adding cache. Use <code>select_related()</code> and <code>prefetch_related()</code> to reduce query count.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django caching — simulated

        cache = {}

        def expensive_query():
            print("Running expensive database query...")
            return ["post-1", "post-2", "post-3"]

        def get_post_list():
            if "post_list" not in cache:
                cache["post_list"] = expensive_query()
            return cache["post_list"]

        print("First request:")
        print(get_post_list())
        print("\nSecond request:")
        print(get_post_list())
        print("\nCache keys:", list(cache.keys()))
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Deployment and Production Settings</h1>
        </div>
        <p class="lc-lead">Local development is only the start. Production Django apps need secure settings, proper static handling, a real database, and a web server stack.</p>
        <div class="lc-card">
          <h3>Production Checklist</h3>
          <ul class="lc-list">
            <li><code>DEBUG = False</code></li>
            <li>Set real <code>ALLOWED_HOSTS</code></li>
            <li>Use PostgreSQL or MySQL in production</li>
            <li>Run <code>collectstatic</code></li>
            <li>Serve through Gunicorn/Uvicorn + Nginx</li>
            <li>Set HTTPS, secure cookies, and CSRF protection</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Commands</h3>
          <div class="lc-code">python manage.py collectstatic<br>python manage.py migrate<br>gunicorn mysite.wsgi:application<br>python manage.py check --deploy</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Treat deployment like code. Use environment variables, reproducible builds, and health checks instead of manual server tweaks.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django deployment checks — simulated

        config = {
            "DEBUG": False,
            "ALLOWED_HOSTS": ["myapp.com", "www.myapp.com"],
            "DATABASE": "postgresql",
            "HTTPS": True,
            "STATIC_READY": True,
        }

        print("Production Readiness Check")
        print("=" * 40)
        for key, value in config.items():
            status = "✅" if value else "❌"
            print(f"{status} {key}: {value}")

        ready = all(config.values())
        print("\nDeployment Status:", "Ready" if ready else "Needs fixes")
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-django">Django</div>
          <h1 class="lc-title">Django Final Review</h1>
        </div>
        <p class="lc-lead">You now have the full Django foundation: request flow, ORM, admin, forms, auth, templates, middleware, APIs, and deployment.</p>
        <div class="lc-card">
          <h3>What You Built Conceptually</h3>
          <ul class="lc-list lc-list-check">
            <li>Project structure and settings</li>
            <li>URL routing and views</li>
            <li>Models, migrations, and QuerySets</li>
            <li>Admin screens and forms</li>
            <li>Class-based views and auth</li>
            <li>Templates, static files, middleware, testing</li>
            <li>REST APIs, caching, and deployment</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Next Best Steps</h3>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>What to learn next</th></tr></thead>
            <tbody>
              <tr><td>Build a blog</td><td>Templates, forms, auth, admin</td></tr>
              <tr><td>Build an API</td><td>Django REST Framework</td></tr>
              <tr><td>Scale an app</td><td>Caching, Celery, PostgreSQL, deployment</td></tr>
              <tr><td>Ship production apps</td><td>Gunicorn, Nginx, Docker, CI/CD</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Final Tip:</strong> The fastest way to get good at Django is to build one complete app end to end — models, views, templates, auth, admin, and deployment — not just isolated snippets.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Django course review — simulated

        skills = {
            "URLs & Views": True,
            "ORM & Models": True,
            "Migrations": True,
            "Admin": True,
            "Forms": True,
            "Auth": True,
            "Templates": True,
            "APIs": True,
            "Deployment": True,
        }

        print("Django Skill Review")
        print("=" * 40)
        completed = 0
        for skill, done in skills.items():
            icon = "✅" if done else "⬜"
            completed += int(done)
            print(f"{icon} {skill}")

        percent = round((completed / len(skills)) * 100)
        print(f"\nProgress: {completed}/{len(skills)} skills ({percent}%)")
        print("Ready to build a real Django project.")
      PYTHON
    },
  }
end

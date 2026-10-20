require "test_helper"

class SeoTest < ActionDispatch::IntegrationTest
  test "home page has the title, description, canonical link and site name data" do
    get root_path
    assert_select "title", "CoffeeBean AI: Learn AI with Hands-On Lessons and Podcasts"
    assert_select "meta[name=description][content^='Learn AI and how to use it, with podcasts too']"
    assert_select "link[rel=canonical][href='http://www.example.com/']"
    assert_select "meta[property='og:image']"
    assert_match(/"@type":"WebSite","@id":"[^"]+","name":"CoffeeBean AI"/, response.body)
  end

  test "sitemap lists public pages and blog posts, not lessons" do
    get sitemap_path
    assert_response :success
    assert_equal "application/xml", response.media_type
    assert_includes response.body, "<loc>http://www.example.com/pricing</loc>"
    BlogPost.all.each { |p| assert_includes response.body, "/blog/#{p.slug}" }
    assert_not_includes response.body, "/lessons/"
  end

  test "robots.txt points to the sitemap" do
    assert_includes Rails.root.join("public/robots.txt").read, "Sitemap: https://www.coffeebeanai.com/sitemap.xml"
  end
end

class PublicCoursesTest < ActionDispatch::IntegrationTest
  setup do
    @course = Course.create!(title: "Public Course", slug: "public-course", published: true, position: 96,
                             color: "#123456", icon: "📗", description: "A course for public page tests.")
    [1, 2].each { |n| @course.course_lessons.create!(title: "L#{n}", position: n, description: "d") }
  end

  test "visitors who are not logged in can see the course list and course pages" do
    get courses_path
    assert_response :success
    get course_path(@course)
    assert_response :success
    assert_match(/"@type":"Course"/, response.body)
    assert_select "a[href='#{new_user_registration_path}']", /Start the free lesson/
  end

  test "lessons still need a login" do
    lesson = @course.course_lessons.ordered.first
    get course_lesson_path(course_slug: @course.slug, id: lesson.id)
    assert_redirected_to new_user_session_path
  end

  test "sitemap lists the courses" do
    get sitemap_path
    assert_includes response.body, course_path(@course)
  end
end

class BlogSeoTest < ActionDispatch::IntegrationTest
  test "every AI guide has a cover, a short description, FAQ data and links to real courses" do
    slugs = Course.pluck(:slug).to_set
    guides = BlogPost.all.select { |p| p.cover_image == "cover.svg" }
    assert_equal 10, guides.size
    guides.each do |p|
      assert p.image_file(p.cover_image), "#{p.slug} cover"
      assert_operator File.size(p.image_file(p.cover_image)), :<, 10.kilobytes
      assert_includes 100..160, p.subtitle.size, "#{p.slug} subtitle"
      assert_equal 4, p.faqs.size, "#{p.slug} FAQ"
      get blog_path(p)
      assert_response :success
      assert_match(/"@type":"FAQPage"/, response.body)
      assert_match(/"@type":"Article"/, response.body)
    end
  end

  test "SVG covers are served with a strict policy" do
    p = BlogPost.find("what-is-rag")
    get blog_image_path(p, "cover.svg")
    assert_response :success
    assert_equal "default-src 'none'; style-src 'unsafe-inline'", response.headers["Content-Security-Policy"]
  end
end

require "test_helper"

# Guards the navigation links that used to be broken: the Courses page, course links using
# ids instead of slugs, and the footer's placeholder links.
class LinksTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:two)
    @course = Course.create!(title: "Link Test Course", slug: "link-test-course", published: true, position: 99,
                             color: "#123456", icon: "🔗", description: "A course for link tests.")
    @lesson = @course.course_lessons.create!(title: "First", position: 1, description: "d")
  end

  test "course URLs use the slug" do
    assert_equal "/courses/link-test-course", course_path(@course)
  end

  test "the Courses page lists courses with working links" do
    sign_in @user
    get courses_path
    assert_response :success
    assert_select "a[href=?]", "/courses/link-test-course"
    assert_select "a[href=?]", course_lesson_path(course_slug: @course.slug, id: @lesson.id)
  end

  test "the dashboard no longer lists all courses; the Courses page does" do
    sign_in @user
    get dashboard_path
    assert_response :success
    assert_select ".c-grid", 0
    assert_select ".d-hello a[href=?]", courses_path
    get "/courses/link-test-course"
    assert_response :success
  end

  test "footer links go to real pages" do
    get root_path
    assert_select ".site-footer a[href='#']", 0
    %w[/about /contact /pricing /privacy /terms /refund-policy /delivery-policy].each do |path|
      assert_select ".site-footer a[href=?]", path
      get path
      assert_response :success, "#{path} should load"
    end
  end

  test "admin course page opens from its slug link" do
    sign_in users(:one).tap { |u| u.update!(admin: true) }
    get admin_course_path(@course)
    assert_response :success
  end

  test "the original AI course is a card in the course list, not a navbar link" do
    sign_in @user
    get courses_path
    assert_select ".c-grid .c-card .c-card-title", text: "Beginner AI with Python"
    assert_select ".site-nav a", text: "CoffeeBean AI Course", count: 0
  end

  test "the Blog link is in the footer, not the navbar" do
    get root_path
    assert_select ".site-nav a", text: "Blog", count: 0
    assert_select ".site-footer a[href=?]", blogs_path, text: "Blog"
  end
end

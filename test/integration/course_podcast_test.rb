require "test_helper"

# Course pages show "Listen to this course" when config/podcasts.yml has episodes for the course.
class CoursePodcastTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def course(slug)
    Course.create!(title: slug.titleize, slug: slug, published: true, position: 950, color: "#123456", icon: "📘", description: "d")
          .tap { |c| c.course_lessons.create!(title: "L1", position: 1, description: "d") }
  end

  setup do
    users(:two).update!(access_until: 1.month.from_now)   # course podcasts need a plan
    sign_in users(:two)
  end

  test "a course with an episode in several languages gets language buttons" do
    c = course("building-ai-agents")
    get course_path(c)
    assert_response :success
    assert_select ".cp h2", "Listen to this course"
    assert_select ".cp-ep .bc-lang", 6
    langs = JSON.parse(css_select(".cp-ep").first["data-podcast-languages-value"])
    assert_equal %w[en hi kn ta te ml], langs.map { |l| l["code"] }
    assert langs.all? { |l| l["src"].start_with?(CoursePodcast.base_url + "/courses/building-ai-agents/episode-1-") }
  end

  test "two episodes are numbered; courses without a podcast show nothing" do
    get course_path(course("ai-sales-outreach"))
    assert_select ".cp-ep", 2
    assert_select ".cp-ep-num", "Episode 1"
    get course_path(course("no-podcast-course"))
    assert_select ".cp", 0
  end

  test "without a plan the course podcast shows locked, with no audio" do
    users(:two).update!(access_until: nil)
    get course_path(course("building-ai-agents"))
    assert_select ".cp-ep-locked .cp-ep-title"
    assert_select ".cp-lock a[href=?]", pricing_path
    assert_select "[data-controller=podcast]", 0
    assert_select "audio", 0
  end

  test "the home page demo podcast plays for everyone" do
    sign_out :user
    get root_path
    assert_select "audio", minimum: 1
  end

  test "every course slug in podcasts.yml exists in the course list" do
    slugs = Course::CATEGORIES.flat_map(&:last)
    missing = CoursePodcast.data["courses"].keys - slugs - ["beginner-ai-python"]   # the original course is not a Course record
    assert_empty missing
  end
end

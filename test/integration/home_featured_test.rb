require "test_helper"

# The home page opens on a "Featured" tab with 20 chosen courses instead of "All".
class HomeFeaturedTest < ActionDispatch::IntegrationTest
  test "the featured courses come first, in order, and the rest start hidden" do
    featured = Course::FEATURED_SLUGS.first(2).each_with_index.map do |slug, i|
      Course.create!(title: "F#{i}", slug: slug, published: true, position: 900 + i, color: "#123456", icon: "⭐", description: "Featured #{i}.")
    end
    other = Course.create!(title: "Other", slug: "other-course", published: true, position: 1, color: "#123456", icon: "📘", description: "Not featured.")

    get root_path
    assert_response :success
    assert_select ".c-tab", text: "All", count: 0
    assert_select ".c-tab.is-active[data-category=featured]", "Featured"
    cards = css_select(".c-grid .c-card[data-featured=true]")
    assert_equal %w[f0 f1], cards.first(2).map { |c| c["data-search"].split.first }
    assert_select ".c-card[data-featured=true]:not([hidden])", 2
    assert_select ".c-card[data-featured=false][hidden]", 2   # "Other" and the original AI course
    assert other
  end

  test "the Courses page keeps its All tab" do
    sign_in_as = users(:two)
    post user_session_path, params: { user: { email: sign_in_as.email, password: "password123" } }
    get courses_path
    assert_select ".c-tab.is-active[data-category=all]", "All"
  end

  test "the home page shows two live activities before the courses" do
    get root_path
    assert_select "#try h2", "Understand AI by seeing it work"
    assert_select "#try .hd-card", 2
    assert_select "#try [data-controller=tokenizer][data-tokenizer-lazy-value=true]"
    assert_select "#try [data-controller=vector-plot]"
    body = response.body
    assert body.index('id="try"') < body.index('id="courses"'), "activities come before the courses"
  end

  test "the home page speaks to professionals: job areas and AI at work" do
    Course.create!(title: "AI for Medical Documentation", slug: "ai-medical-documentation", published: true,
                   position: 990, color: "#e11d48", icon: "🩺", description: "d")
    get root_path
    assert_select "#for-you h2", "AI skills for your profession"
    assert_select "#for-you a.hj-more[href=?]", courses_path(category: "Healthcare")
    assert_select "#for-you .hj-courses a[href=?]", course_path("ai-medical-documentation")
    assert_select ".hr-tab", 10
    assert_select ".hr-tab.is-on", "🛠️ Engineer"
    assert_select ".hr-panel", 10
    assert_select ".hr-panel[hidden]", 9
    body = response.body
    assert body.index('id="for-you"') < body.index('id="courses"')
  end
end

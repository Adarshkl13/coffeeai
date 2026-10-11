require "test_helper"

class BlogTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "neither the Courses page nor the dashboard lists blog posts; the footer links to the blog" do
    sign_in users(:two)
    get dashboard_path
    assert_select "h2", text: "From the Blog", count: 0
    get courses_path
    assert_response :success
    assert_select ".courses-blog", 0
    assert_select ".site-footer a[href=?]", blogs_path
  end

  test "a post renders with its title and working image links" do
    post = BlogPost.all.first
    get blog_path(post)
    assert_response :success
    assert_select "h1.blog-article-title", post.title
    srcs = css_select(".blog-prose img").map { |img| img["src"] }
    assert srcs.any?
    assert srcs.all? { |s| s.start_with?("/blog/#{post.slug}/images/") }, "images point at the blog image route"

    get srcs.first
    assert_response :success
    assert_equal "image/png", response.media_type
  end

  test "the blog index is public" do
    get blogs_path
    assert_response :success
    assert_select ".blog-card", BlogPost.all.size
  end

  test "unknown posts and files outside the images folder are not served" do
    slug = BlogPost.all.first.slug
    get blog_path("no-such-post")
    assert_response :not_found
    get "/blog/#{slug}/images/post.md"
    assert_response :not_found
    get "/blog/#{slug}/images/..%2F..%2Fconfig%2Fdatabase.yml"
    assert_response :not_found
  end
end

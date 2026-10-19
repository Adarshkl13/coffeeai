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

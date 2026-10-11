require "test_helper"

# The home page "AI Podcast": six audio languages, and the files they point to exist.
class PodcastTest < ActionDispatch::IntegrationTest
  test "home page shows the podcast player with every language" do
    get root_path
    assert_response :success
    assert_select ".bc-card .bc-lang", 6
    assert_select ".bc-tile, .bc-side", 0

    languages = JSON.parse(css_select(".bc").first["data-podcast-languages-value"])
    assert_equal %w[en hi kn ta te ml], languages.map { |l| l["code"] }
    languages.each { |l| assert File.exist?(Rails.root.join("public", l["src"].delete_prefix("/"))), "missing #{l['src']}" }
  end

  test "home page shows the five infographics in a carousel, in order" do
    get root_path
    titles = css_select(".ig-slide").map { |f| f["data-title"] }
    assert_equal ["What is AI?", "AI in real life: everyday uses", "Types of AI", "AI vs ML vs DL", "Why learn AI?"], titles
    assert_select ".ig-dot", 5
    %w[what-is-ai ai-in-real-life types-of-ai ai-vs-ml-vs-dl why-learn-ai].each do |key|
      %W[#{key}.jpg #{key}-md.jpg].each do |file|
        assert File.exist?(Rails.root.join("app/assets/images/podcast", file)), "missing #{file}"
      end
    end
  end
end

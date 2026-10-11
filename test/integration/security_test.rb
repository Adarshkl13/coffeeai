require "test_helper"

# Security guards found in the pre-launch review (2026-10-12).
class SecurityTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "published pages run in a sandbox, so their scripts cannot act as the visitor" do
    page = users(:one).published_pages.create!(title: "Mine", slug: "mine", html_content: "<p>Hi</p>",
                                               css_content: "p { color: red; }", js_content: "alert(1)")
    get published_page_path(page.slug)
    assert_response :success
    assert_match(/\Asandbox allow-scripts/, response.headers["Content-Security-Policy"])
    refute_match(/allow-same-origin/, response.headers["Content-Security-Policy"])
  end

  test "SVG uploads are refused (an SVG can carry JavaScript)" do
    sign_in users(:one)
    svg = Rack::Test::UploadedFile.new(StringIO.new(%(<svg xmlns="http://www.w3.org/2000/svg"><script>alert(1)</script></svg>)),
                                       "image/svg+xml", original_filename: "x.svg")
    post editor_uploads_path, params: { image: svg }
    assert_response :unprocessable_entity
  end

  test "passwords need at least 8 characters" do
    post user_registration_path, params: { user: { email: "new@example.com", password: "short12", password_confirmation: "short12" } }
    assert_not User.exists?(email: "new@example.com")
  end

  # Rate limits (sign-in, sign-up, password reset) are checked by hand: the test cache is a null store.
end

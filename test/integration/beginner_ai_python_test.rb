require "test_helper"

# The original "Beginner AI with Python" course: each lesson is built on its existing image (no new pictures),
# with an explanation, an activity and a Python editor.
class BeginnerAiPythonTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "every lesson has a body and starter code" do
    assert_equal (1..28).to_a, BeginnerAiPythonContent::LESSONS.keys.sort
    BeginnerAiPythonContent::LESSONS.each do |id, l|
      assert_no_match(/<svg|<figure|<img/, l[:body], "lesson #{id}: only the existing image, no new pictures")
      assert_includes l[:body], 'data-controller="', "lesson #{id}: activity"
      assert l[:starter_code].present?, "lesson #{id}"
    end
  end

  test "a lesson page shows the image, the body and the code editor, and no old text box" do
    user = users(:two).tap { |u| u.update!(access_until: 1.month.from_now) }
    sign_in user
    get lesson_path(1)
    assert_response :success
    assert_select ".lesson-image"
    assert_select ".lesson-rich-body .lc-card"
    assert_select ".lesson-rich-body svg", 0
    assert_select ".lesson-rich-title", BeginnerAiPythonContent::META[1][:title]
    assert_select ".live-editor textarea"
    assert_select ".lesson-description", 0
    assert_select ".sidebar-logo a.sidebar-logo-link[href=?]", dashboard_path
    assert_select "a.mobile-logo[href=?]", dashboard_path
  end

  test "the first lesson of modules 1-4 has the module podcast in six languages" do
    sign_in users(:two).tap { |u| u.update!(access_until: 1.month.from_now) }
    { 1 => 1, 6 => 2, 11 => 3, 17 => 4 }.each do |lesson_id, mod|
      LessonProgress.where(user: users(:two)).delete_all
      (1...lesson_id).each { |i| LessonProgress.create!(user: users(:two), lesson_id: i, status: :completed) }
      get lesson_path(lesson_id)
      assert_select ".cp h2", "Listen to this module"
      assert_select ".cp-ep .bc-lang", 6
      assert_includes css_select(".cp-ep").first["data-podcast-languages-value"], "module-#{mod}-en.m4a"
    end
    get lesson_path(2)
    assert_select ".cp", 0
  end
end

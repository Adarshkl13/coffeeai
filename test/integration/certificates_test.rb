require "test_helper"

# Course certificates: earned when every lesson is done, shown small on the course page, the lesson sidebar
# and the dashboard, and public at /certificates/:code.
class CertificatesTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:two).tap { |u| u.update!(access_until: 1.month.from_now, name: "Asha Rao") }
    @course = Course.create!(title: "Cert Course", slug: "cert-course", published: true, position: 97,
                             color: "#123456", icon: "📗", description: "A course for certificate tests.")
    @lessons = [1, 2].map { |n| @course.course_lessons.create!(title: "L#{n}", position: n, description: "d") }
    sign_in @user
  end

  def finish(lessons)
    lessons.each { |l| CourseProgress.create!(user: @user, course_lesson: l, status: :completed, completed_at: Time.current) }
  end

  test "no certificate until every lesson is done" do
    finish(@lessons.first(1))
    get course_path(@course)
    assert_select ".crt-course-section", 0
    assert_equal 0, @user.certificates.count
    get course_lesson_path(course_slug: @course.slug, id: @lessons.last.id)
    assert_select ".certificate-card .cert-desc", /1 of 2 done/
    get course_lesson_path(course_slug: @course.slug, id: @lessons.first.id)
    assert_select ".certificate-card", 0   # the note shows on the last lesson only
  end

  test "finishing the course gives one certificate, shown small and full size" do
    finish(@lessons)
    get course_path(@course)
    assert_select ".crt-course-section .crt-thumb .crt-name", "Asha Rao"
    assert_select ".crt-dialog .crt-course", "Cert Course"
    cert = @user.certificates.sole
    assert_match(/\ACB-[A-Z2-9]{4}-[A-Z2-9]{4}\z/, cert.code)
    assert_equal 2, cert.lesson_count

    get course_path(@course)           # visiting again does not make another one
    assert_equal 1, @user.certificates.count
    get course_lesson_path(course_slug: @course.slug, id: @lessons.last.id)
    assert_select ".crt-side .crt-thumb"
    get dashboard_path
    assert_select ".d-certs .crt-thumb-cap b", "Cert Course"
  end

  test "skipped lessons do not count towards a certificate" do
    finish(@lessons.first(1))
    CourseProgress.create!(user: @user, course_lesson: @lessons.last, status: :skipped, skipped_at: Time.current)
    get course_path(@course)
    assert_select ".crt-course-section", 0
    assert_select ".crt-hint", /complete the lessons you skipped \(1 of 2 completed\)/
    assert_equal 0, @user.certificates.count
  end

  test "the public page shows the certificate to anyone, and unknown codes are 404" do
    finish(@lessons)
    get course_path(@course)
    cert = @user.certificates.sole
    sign_out :user
    get certificate_path(cert)
    assert_response :success
    assert_select ".crt-verified", /Asha Rao.*Cert Course/m
    assert_select ".crt-id b", cert.code
    get "/certificates/CB-AAAA-AAAA"
    assert_response :not_found
  end

  test "the name comes from Account settings, or a tidy email name" do
    @user.update!(name: nil)
    assert_equal "Two", @user.display_name
    put user_registration_path, params: { user: { name: "Asha Rao", current_password: "password123" } }
    assert_equal "Asha Rao", @user.reload.name
  end
end

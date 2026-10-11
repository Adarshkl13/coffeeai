require "test_helper"

# The Account settings page: plan status, changing the password, and no self-delete.
class AccountTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup { @user = users(:two) }

  test "guests are sent to log in" do
    get edit_user_registration_path
    assert_redirected_to new_user_session_path
  end

  test "shows the plan and is linked from the navbar" do
    sign_in @user
    get edit_user_registration_path
    assert_response :success
    assert_select "h1", "Account settings"
    assert_select ".acct-status", /do not have a plan/
    assert_select ".site-nav a[href=?]", edit_user_registration_path

    @user.update!(access_until: Time.zone.local(2027, 10, 6))
    get edit_user_registration_path
    assert_select ".acct-status", /Full access until\s+6 October 2027/
  end

  test "changing the password needs the current password and stays on the page" do
    sign_in @user
    put user_registration_path, params: { user: { password: "newpass456", password_confirmation: "newpass456", current_password: "wrong" } }
    assert_response :unprocessable_entity
    assert_select ".auth-error", /Current password is invalid/

    put user_registration_path, params: { user: { password: "newpass456", password_confirmation: "newpass456", current_password: "password123" } }
    assert_redirected_to edit_user_registration_path
    assert @user.reload.valid_password?("newpass456")
  end

  test "accounts are not deleted from the page" do
    sign_in @user
    delete user_registration_path
    assert_redirected_to edit_user_registration_path
    assert User.exists?(@user.id)
  end
end

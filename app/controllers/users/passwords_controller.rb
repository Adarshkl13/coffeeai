# Forgot password. Rate-limited so the form cannot be used to flood someone's inbox.
class Users::PasswordsController < Devise::PasswordsController
  rate_limit to: 5, within: 15.minutes, only: :create, with: -> { redirect_to new_user_password_path, alert: "Too many reset requests. Please wait a few minutes and try again." }
end

# Sign in. Rate-limited so nobody can try thousands of passwords against an account.
class Users::SessionsController < Devise::SessionsController
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_user_session_path, alert: "Too many sign-in attempts. Please wait a few minutes and try again." }
end

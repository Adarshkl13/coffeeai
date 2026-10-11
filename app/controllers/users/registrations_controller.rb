# Sign-up and the Account settings page (app/views/devise/registrations/edit.html.erb).
# After saving settings, people stay on the settings page. Accounts are not deleted from the page:
# our Terms and Privacy pages ask people to contact us, because payment records must be kept.
class Users::RegistrationsController < Devise::RegistrationsController
  # Slows down bots that create many accounts
  rate_limit to: 10, within: 1.hour, only: :create, with: -> { redirect_to new_user_registration_path, alert: "Too many sign-ups from your network. Please try again later." }

  def destroy
    redirect_to edit_user_registration_path, alert: "To delete your account, please email #{COMPANY[:email]} from your account email address."
  end

  protected

  def after_update_path_for(_resource)
    edit_user_registration_path
  end
end

# Google sends the learner back here (/auth/<provider>/callback) after they agree to sign in.
# User.from_omniauth finds, links or creates the account.
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2 = finish("Google")

  # The learner pressed Cancel, or the provider returned an error.
  def failure
    redirect_to new_user_session_path, alert: "Sign-in with #{provider_label} didn't finish. Please try again, or log in with your email."
  end

  private

  def finish(label)
    user, reason = User.from_omniauth(request.env["omniauth.auth"])
    if user&.persisted?
      if user.active_for_authentication?
        flash[:notice] = reason == :created ? "Welcome to CoffeeBean AI! You signed up with #{label}." : "Logged in with #{label}."
        sign_in_and_redirect user, event: :authentication
      else
        redirect_to new_user_session_path, alert: I18n.t("devise.failure.blocked")
      end
    else
      redirect_to new_user_registration_path, alert: failure_message(label, reason)
    end
  rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotUnique
    redirect_to new_user_session_path, alert: "We couldn't sign you in with #{label}. Please log in with your email and password."
  end

  def failure_message(label, reason)
    case reason
    when :no_email then "#{label} didn't share your email address, so we can't create your account. Please sign up with your email instead."
    when :unverified_email then "Your #{label} email address isn't verified yet. Verify it with #{label}, or sign up with your email."
    else "We couldn't sign you in with #{label}. Please try again."
    end
  end

  def provider_label
    SocialLogin::PROVIDERS.dig(failed_strategy&.name&.to_sym, :label) || "that account"
  end
end

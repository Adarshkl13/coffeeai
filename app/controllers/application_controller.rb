class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || dashboard_path
  end

  def after_sign_up_path_for(_resource)
    dashboard_path
  end

  helper_method :full_access?

  # Has a paid plan (Plan). Without one, a learner can open only the first lesson of each course,
  # and course podcasts are locked. Ask AI, the Editor and the home page demo podcast are free.
  def full_access?
    current_user&.member? || false
  end

  # Lessons and the AI tools inside them need a paid plan. Ask AI and the Editor do not.
  def require_plan
    return if full_access?
    redirect_to pricing_path, alert: "The first lesson of every course is free. Choose a plan to open all the lessons."
  end

  # The same check for JSON endpoints.
  def require_plan_json
    return if current_user&.member?
    render json: { error: "This needs a CoffeeBean AI plan. See the Pricing page.", upgrade: true }, status: :payment_required
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def require_admin
    redirect_to root_path, alert: "Not authorized." unless current_user&.admin?
  end
end

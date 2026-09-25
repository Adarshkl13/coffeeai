class HomeController < ApplicationController
  def index
    @courses = Course.published.ordered
    redirect_to dashboard_path if user_signed_in?
  end
end

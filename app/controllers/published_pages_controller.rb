class PublishedPagesController < ApplicationController
  def show
    @page = PublishedPage.find_by!(slug: params[:slug])

    raise ActiveRecord::RecordNotFound unless @page.is_public? || @page.user == current_user

    # Learners' own HTML and JavaScript run here. The sandbox gives the page a separate, empty origin:
    # its scripts still run, but cannot read the visitor's CoffeeBean AI cookies or act as them.
    response.headers["Content-Security-Policy"] = "sandbox allow-scripts allow-forms allow-popups allow-modals allow-downloads"
    response.headers["X-Frame-Options"] = "SAMEORIGIN"
    render layout: false
  end
end

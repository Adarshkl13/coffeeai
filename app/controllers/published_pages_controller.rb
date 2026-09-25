class PublishedPagesController < ApplicationController
  def show
    @page = PublishedPage.find_by!(slug: params[:slug])

    raise ActiveRecord::RecordNotFound unless @page.is_public? || @page.user == current_user

    render layout: false
  end
end

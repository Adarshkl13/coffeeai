# Static information pages linked from the footer.
class PagesController < ApplicationController
  def about; end

  def contact
    @contact_email = COMPANY[:email]
  end

  def privacy; end
  def refund; end
  def delivery; end
  def terms; end
end

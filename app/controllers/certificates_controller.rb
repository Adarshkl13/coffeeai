# Public certificate page: anyone with the link can see and check a certificate. ?print=1 opens the print dialog.
class CertificatesController < ApplicationController
  def show
    @certificate = Certificate.includes(:user).find_by!(code: params[:code].to_s.upcase)
    @print = params[:print].present?
  end
end

class ApplicationMailer < ActionMailer::Base
  default from: %("CoffeeBean AI" <#{ENV.fetch("MAIL_FROM", COMPANY[:email])}>)
  layout "mailer"
end

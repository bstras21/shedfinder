class ApplicationMailer < ActionMailer::Base
  default from: ENV['ADMINEMAIL']
  layout 'mailer'
end

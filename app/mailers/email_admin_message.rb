class EmailAdminMessage < ApplicationMailer
    def send_admin_message(message)
        @message = message
        email = mail from: ENV['ADMINEMAIL'], to: ENV['ADMINEMAIL'], subject: 'New Shed Finder Contact Message'
    end
end

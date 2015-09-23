class EmailChewOrder < ApplicationMailer
    def send_admin_chew_order(cheworder)
        @cheworder = cheworder
        email = mail from: ENV['ADMINEMAIL'], to: ENV['ADMINEMAIL'], subject: 'New Chew Order!'
    end
end

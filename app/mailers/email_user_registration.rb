class EmailUserRegistration < ApplicationMailer


    def send_admin_user_registration(user)
#       @user = user
#       mg_client = Mailgun::Client.new 'key-cdcb36de53dd258e1aea6f3f1b815fa1'
#       message_params = {:from    => 'bstras21@gmail.com',
#                         :to      => 'bstras21@gmail.com',
#                         :subject => 'Sample Mail using Mailgun API',
#                         :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
#       mg_client.send_message 'https://api.mailgun.net/v3/sandbox1fc33f2b63734b8cb71c613f401dbbc1.mailgun.org', message_params

#        @user = user
#        mail({
#          :from    => 'bstras21@gmail.com',
#          :to      => 'bstras21@gmail.com',
#          :subject => "Sample Mail using Mailgun API.",
#          :text    => "This mail is sent using Mailgun API via mailgun-ruby."
#        })
        @user = user
       # mail(to: @user.email, subject: 'Sample Email')


        email = mail from: ENV['ADMINEMAIL'], to: ENV['ADMINEMAIL'], subject: 'User created!'
    end
end

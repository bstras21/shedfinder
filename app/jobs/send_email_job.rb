class SendEmailJob < ActiveJob::Base
  queue_as :default

    def perform(user)
        @user = user
        #Sends email to user when user is created.
        EmailUserRegistration.send_admin_user_registration(@user).deliver_later
  end

    def cheworder(user)
        @user = user
end

class MessagesController < ApplicationController
  def new
      @message = Message.new
  end

    def create
        @message = Message.new(message_params)
        if @message.save
            #       Sends email to user when user is created.
        #SendEmailJob.set(wait: 20.seconds).perform_later(@user)
            EmailAdminMessage.send_admin_message(@message).deliver_now
            redirect_to '/form_success'
        else
            render 'new'
        end
    end

    private

    def message_params
        params.require(:message).permit(:name, :email, :phone, :message)
    end
end

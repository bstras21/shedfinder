class HtmlPagesController < ApplicationController
  def home
  end

  def about
  end

    def contact
      @contact = Contact.contact(contact_params)

      if @contact.save

#       Sends email to user when user is created.
        #SendEmailJob.set(wait: 20.seconds).perform_later(@user)
       # EmailUserRegistration.send_admin_user_registration(@user).deliver_now

          redirect_to '/form_success'
      else
        render 'new'
      end

  end

  def login
  end

  def shed_antler_sellers
  end

     private

      def contact_params
          params.require(:contact).permit(:name, :email, :phone, :message)
      end
end

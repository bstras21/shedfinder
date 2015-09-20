class UsersController < ApplicationController
    #this means they have to be logged in to see this page
    #before_filter :authorize <- this is restric all
    before_filter :require_login, only: [:edit, :destroy, :update]

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save

#       Sends email to user when user is created.
        EmailUserRegistration.send_admin_user_registration(@user).deliver_now

      session[:user_id] = @user.id
      redirect_to '/signup_success'
    else
        render 'new'
    end

  end



  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      #flash[:success] = "Profile updated"
        redirect_to '/user_dashboard'

    else
      render 'edit'
    end
  end

  private

      def user_params
          params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone, :location, :buyer, :seller)
      end

    def require_login
    unless current_user
      redirect_to login_url
    end
  end


end

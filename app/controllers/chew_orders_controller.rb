class ChewOrdersController < ApplicationController
    def new
        @cheworder = ChewOrder.new
    end

    def create
        @cheworder = ChewOrder.new(order_params)
        if @cheworder.save
            #       Sends email to user when user is created.
        #SendEmailJob.set(wait: 20.seconds).perform_later(@user)
        EmailChewOrder.send_admin_chew_order(@cheworder).deliver_now
            redirect_to '/form_success'
        else
            render 'new'
        end
    end

    private

    def order_params
        params.require(:chew_order).permit(:name, :email, :phone, :address, :antlertype, :gradea, :gradeb, :gradec, :message)
    end
end


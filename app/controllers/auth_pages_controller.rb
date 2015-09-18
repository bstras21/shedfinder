class AuthPagesController < ApplicationController
    #this means they have to be logged in to see this page
    before_filter :authorize
end

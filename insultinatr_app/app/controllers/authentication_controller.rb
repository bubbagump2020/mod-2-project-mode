class AuthenticationController < ApplicationController
    skip_before_action :check_for_authentication

    def login

    end

    def authenticate
        user = User.find_by({ username: params[:username]})
        if user != nil && customer.authenticate(params[:password])
            session[:current_user_id] = user.id
            redirect_to "/users/:id"
        end
    end

    def new
    end
    
    def create

    end

end
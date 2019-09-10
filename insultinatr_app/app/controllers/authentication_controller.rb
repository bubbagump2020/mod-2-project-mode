class AuthenticationController < ApplicationController
    skip_before_action :check_for_authentication

    def login
    end

    def authenticate
        user = User.find_by({ email: params[:email]})
        if user != nil && user.authenticate(params[:password])
            session[:current_user_id] = user.id
            redirect_to("/users")
        end
    end



end
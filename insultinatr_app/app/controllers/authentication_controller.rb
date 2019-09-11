class AuthenticationController < ApplicationController
    # skip_before_action :check_for_authentication

    def login
    end

    def authenticate
        user = User.find_by({ email: params[:email]})
        if user != nil && user.authenticate(params[:password])
            session[:current_user_id] = user.id
            redirect_to("/users")
        else
            flash.now[:alert] = "Email or password is invalid"
            redirect_to("/login")
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to("/login")
    end


end
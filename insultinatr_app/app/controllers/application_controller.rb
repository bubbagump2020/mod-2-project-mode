class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    before_action(:check_for_authentication)

    def check_for_authentication
        if(current_user == nil)
            redirect_to("/login")
        end
    end

    def current_user
        if(session[:current_user_id] != nil)
            return User.find(session[:current_user_id])
        end
    end
end

module SessionsHelper
    # logs in given user
    def log_in(user)
        session[:id] = user.id
    end

    def current_user
        @current_user ||= User.find_by(id: session[:id])
    end

    def logged_in?
        !current_user.nil?
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
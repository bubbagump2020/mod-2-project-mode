class UsersController < ActionController::Base

    def create

    end

    def user_params
        params.require(:user).permit(:user_name, :password)
    end

end

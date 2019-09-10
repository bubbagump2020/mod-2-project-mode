class UsersController < ActionController::Base

    def create
        @user = User.create(user_params)
        redirect_to "/users/#{@user.id}"
    end

    def show

    end

    def user_params
        params.require(:user).permit(:username, :password)
    end

end

class UsersController < ActionController::Base
    # skip_before_action(:verify_authenticity_token)

    def create
        @user = User.create(user_params)
        redirect_to "/users/#{@user.id}"
    end

    def show

    end

    def user_params
        params.require(:user).permit(:username, :password)

        redirect_to("/users/#{@user.id}")
    end

    def show
        @user = User.find_by({ id:params[:id]})
        @insults = Insult.all

    end

end

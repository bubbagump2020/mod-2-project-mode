class UsersController < ActionController::Base

    def create
        @user = User.create(user_params)
        redirect_to "/users/#{@user.id}"
    end

    def show

    end

    def user_params
        params.require(:user).permit(:username, :password)

        })
        redirect_to("/users/#{@user.id}")
    end

    def show
        @user = User.find_by({ id:params[:id]})
        @insults = Insult.all

    end

end

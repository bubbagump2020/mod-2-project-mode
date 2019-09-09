class UsersController < ActionController::Base

    def index
        @users = User.all 
    end

    def show
        @user = User.find_by({ id:params[:id]})
    end

    def new
        @user = User.new
    end

    def create
        User.create(user_params)
        redirect_to("/users/:id")
    end

    def user_params
        params[:user]
    end

end

class UsersController < ActionController::Base

    def index
        @users = User.all 
    end

    def new
    end

    def create
        User.create({
            username: params[:username],

        })
        redirect_to("/users/:id")
    end

    def show
        @user = User.find_by({ id:params[:id]})
    end
end

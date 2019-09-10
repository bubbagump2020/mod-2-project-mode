class UsersController < ActionController::Base

    def index
        @user = User.find_by(params[:id])
        redirect_to("/users/#{@user.id}")
    end
    # the instance variable in the new method is needed for the create method
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to("/users/#{@user.id}")
    end


    def user_params
        # byebug
        params.require(:user).permit( :email, :password, :password_confirmation)
    end

    def show
        @user = User.find_by({ id: params[:id]})
        @insults = Insult.all
    end

end

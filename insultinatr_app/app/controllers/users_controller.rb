class UsersController < ActionController::Base
    # Logic: Index is supposed to show a list of all users
    # instead I have it find the logged in user and redirect
    # them to the their own page
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
        params.require(:user).permit( :email, :password, :password_confirmation)
    end

    def show
        @user = User.find_by({ id: params[:id]})
        @swears = Swear.all
        # byebug
    end

end

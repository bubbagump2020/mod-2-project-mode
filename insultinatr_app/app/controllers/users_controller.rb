class UsersController < ActionController::Base
    def show
        @swears = Swear.all
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            flash[:success] = "Welcome!"
            redirect_to @user
        else
            render 'new'
        end

    end

    private
        def user_params
            params.require(:user).permit( :email, :password, :password_confirmation)
        end

end

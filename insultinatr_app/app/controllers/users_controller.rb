class UsersController < ActionController::Base
    def show
        @swears = Swear.all
        @names = Name.all
        @user_id = session[:id]
        @user = User.find_by({id:params[:id]})
        @users = User.all 
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            flash[:success] = "Welcome!"
            redirect_to("/users/#{@user.id}")
        else
            render 'new'
        end

    end

    private
        def user_params
            params.require(:user).permit( :email, :password, :password_confirmation)
        end

end

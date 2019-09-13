class UsersController < ActionController::Base
    def show
        @insults = Insult.all
        @names = Name.all
        @user_id = session[:id]
        @users = User.all 
        @insult = @insults.sample
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

class UsersController < ActionController::Base
    # skip_before_action(:verify_authenticity_token)

    def index
        @users = User.all 
    end

    def new
    end

    def create
        User.create({
            username: params[:username],
            password: params[:password]
        })
        redirect_to("/users/#{@user.id}")
    end

    def show
        @user = User.find_by({ id:params[:id]})
        @insults = Insult.all
    end
end

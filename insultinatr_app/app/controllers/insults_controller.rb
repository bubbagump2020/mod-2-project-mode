class InsultsController < ActionController::Base
    # protect_from_forgery

    def create
        @insult = Insult.create
        @user = User.find(id:params[:id])
        redirect_to users_path
    end

    def index
        @insults = Insult.all 
    end

    def show
        @insult = Insult.find_by({ id:params[:id]})
    end
    
    
end

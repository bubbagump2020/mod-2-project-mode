class InsultsController < ActionController::Base
    def create
        @insult = Insult.create
        redirect_to("/users/#{@user.id}")
    end

    def index
        @insults = Insult.all 
    end

    def show
        @insult = Insult.find_by({ id:params[:id]})
    end
    
    
end

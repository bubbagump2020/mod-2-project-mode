class InsultsController < ActionController::Base

    def index
        @insults = Insult.all 
    end

    def show
        @insult = Insult.find_by({id:params[:id]})
    end

    def new
    end
end

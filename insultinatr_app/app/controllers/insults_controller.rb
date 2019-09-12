class InsultsController < ActionController::Base
    
    def index
        @insults = Insult.all
        # byebug
    end

    def new
        # byebug
        @user_id = session[:current_user_id]
        @insult = Insult.new
    end

    def create
        # byebug
        swear_word = Swear.all.sample
        @insult = Insult.create({
            user_id: session[:current_user_id],
            insult: swear_word.word
        })
        redirect_to("/insults")
        # byebug
    end
    
end

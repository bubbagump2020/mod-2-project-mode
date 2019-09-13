class InsultsController < ActionController::Base
    def show
        @insults = Insult.all
        @user = session[:id]
    end

    def new
        @user_id = session[:id]
        @insult = Insult.new
    end

    def create
        user_id = session[:id]
        swear_word = Swear.all.sample
        @insult = Insult.create({
            user_id: user_id,
            insult: swear_word.word
        })
        redirect_to("/users/#{user_id}")
    end
end

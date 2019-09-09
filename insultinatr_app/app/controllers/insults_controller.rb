class InsultsController < ActionController::Base
    skip_before_action :verify_authenticity_token
    def index
        @insults = Insult.all
    end

    def show
        @insult = Insult.find_by({id:params[:id]})
    end

    def new
    end

    def create
        @swear_words = Swear.all
        @word = @swear_words.sample
        @insult = Insult.create({
            insult: @word.word
        })
        redirect_to "/insults"
    end
end

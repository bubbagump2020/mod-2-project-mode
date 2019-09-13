class NamesController < ApplicationController
    def show
        @insult = Insult.all.sample
        @names = Name.all
        @user = session[:id]
    end

    def new
        @user_id = session[:id]
        @name = Name.new
    end

    def create
        user_id = session[:id]
        generator = Namey::Generator.new
        @name = Name.create({
            user_id: user_id,
            name: generator.name
        })
        redirect_to("/users/#{user_id}")
    end
end
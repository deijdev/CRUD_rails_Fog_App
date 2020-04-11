class GamesController < ApplicationController
    before_action :find_game, only: [:show, :edit]
    # before_action :set_current_user
    def index 
        @games = Game.all
    end

    def show 

    end

    def new
        @game = Game.new
    end

    def create 
        @game = Game.create(game_params)
        if @game.valid?
            @game.save
            redirect_to game_path(@game)
        else 
            render :new
        end
    end

    def edit 

    end

    def update 
        game = find_game
        game.update(game_params)
        redirect_to game_path(game)
    end

    def destroy 
        game = find_game
        game.destroy
        redirect_to games_path
    end

    def buy
        # byebug
        game = find_game
        user = session[:user_id]
        Library.create(game: game, user_id: user)
        redirect_to user_path(user)
    end

    private
    def find_game
        @game = Game.find(params[:id])
    end

    def game_params
        params.require(:game).permit(:title, :img)
    end
end

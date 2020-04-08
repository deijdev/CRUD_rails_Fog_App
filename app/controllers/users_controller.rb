class UsersController < ApplicationController
    # before_action :find_user, only: :edit
    before_action :find_user, only: [:show, :edit]
    @@user = nil

    def index
         @@user
        @users = User.all
    end
    
    def login_show
       
    end

    def loggedin
       
        @@user = User.find_by(name: params[:name])
        redirect_to users_path
    end

    def show
        # @user = User.find_by(name: params[:name])
    end

    def new
        @user = User.new
      
    end

    def create
        @user = User.create(user_params)
        if @user.valid? 
            @user.save
            redirect_to user_path(@user)
        else 
            render :new
        end
        # redirect_to user_path(@user)
    end

    def edit
        @user.games.build
    end

    def update
        user = find_user
        game = Game.find(params[:user][:game_ids])
        # byebug
        user.games << game
        user.save
        user.update(name: params[:name])
        
        redirect_to user_path(user)
    end
    
    def destroy
        user = find_user
        user.destroy
        redirect_to users_path
    end

    private 

    def user_params
        params.require(:user).permit(:name, :game_ids)
    end

    def find_user
        @user = User.find(params[:id])
    end

end

class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit]

    def index 
        @users = User.all
    end
    

    def show
    end

    def new
        @user = User.new
      
    end

    def create
        user = User.create(user_params)
        redirect_to user_path(user)
    end

    def edit
        2.times {@user.games.build}
    end

    def update
        user = find_user
        
        user.update(user_params)
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

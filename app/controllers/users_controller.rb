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
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            flash[:register_errors] = @user.errors.full_messages
            render :new
        end
        # redirect_to user_path(@user)
    end

    def edit
        @user.games.build
    end

    def update
        user = find_user
        # byebug
        game = Game.find(user_params[:game_ids])
        # byebug
        user.games << game
        user.save
        user.update(name: user_params[:name])
        
        redirect_to user_path(user)
    end
    
    def destroy
        user = find_user
        user.destroy
        redirect_to users_path
    end

    private 

    def user_params
        
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :game_ids)
    end

    def find_user
        @user = User.find(params[:id])
    end

end

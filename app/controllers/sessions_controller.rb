class SessionsController < ApplicationController

    def create  
        @user = User.find_by(email: login_params[:email])
        if @user && @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else    
            flash[:login_errors] = ['invalid credentials']
            @user = User.new
            redirect_to new_user_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to "/"
    end

    private

    def login_params
        params.require(:login).permit(:email, :password)
    end
end

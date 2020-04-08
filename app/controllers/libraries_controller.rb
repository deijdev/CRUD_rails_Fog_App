class LibrariesController < ApplicationController

    def show 
        @library = Library.find(params[:id])
    end

    def destroy
        library = Library.find(params[:id])
        user = library.user
        library.destroy
        redirect_to user_path(user)
    end
end

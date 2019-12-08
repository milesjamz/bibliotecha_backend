class LibrariesController < ApplicationController

    def index
        libraries = Library.all
        render json: libraries
    end

    def create
        library = Library.create(library_params)
        render json: library
    end 


    def show
        library = Library.find_by(librarian: params[:librarian])
        render json: library
    end

    def destroy
        library = Library.find_by(librarian: params[:librarian])
        library.delete
        render json: library
    end

    private

    def library_params
        params.require(:library).permit(:librarian, :library_name)
    end 



end

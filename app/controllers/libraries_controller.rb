class LibrariesController < ApplicationController

    def index
        libraries = Library.all
        render json: libraries
    end


    def show
        library = Library.find(params[:id])
        render json: library
    end 

end

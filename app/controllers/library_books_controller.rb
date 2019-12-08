class LibraryBooksController < ApplicationController

    def index
        library_books = LibraryBook.all
        render json: library_books
    end

    def create 
        library_book = LibraryBook.create(library_book_params)
        render json: library_book
    end

    def show
        library_book = LibraryBook.find(params[:id])
        render json: library_book
    end 

    def destroy
        library_book = LibraryBook.find(params[:id])
        library_book.delete
        render json: library_book
    end

private 

def library_book_params
    params.require(:library_book).permit(:library_id, :book_id, :author, :country_of_origin, :original_language, :title, :year_published, :pages)
end


end

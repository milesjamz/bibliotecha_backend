class BooksController < ApplicationController
    def index
        books = Book.all
        render json: books 
    end
    def show
        book = Book.find(params[:id])
        render json: book
    end
    def create
        book = Book.create(book_params)
        render json: book
    end
    def destroy
        book = Book.find(params[:id])
        book.destroy
    end
private
    def book_params
        params.require(:book).permit(:author, :country_of_origin, :bookcover_img, :original_language, :info_link, :title, :year_published, :pages)
    end
end

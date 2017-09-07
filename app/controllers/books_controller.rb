class BooksController < ApplicationController
    
    def index
        @books = Book.all
    end
    
    def show
        @book = Book.find(params[:id])
    end   
    
    def new
    end

    def create
        @book = Book.new(book_params)

        @book.save
        #redirect_to @book
        redirect_to books_path, id: @book.id
    end



    private 
    def book_params
        params.require(:book).permit(:title, :author)
    end
end

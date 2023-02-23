class BooksController < ApplicationController
    def index
        @books = Book.all.order(created_at: 'desc')
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
    end

    def created
    end
end

class BooksController < ApplicationController
    def index
        @books = Book.all.order(created_at: 'desc')
    end
end

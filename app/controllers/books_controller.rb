class BooksController < ApplicationController
    def index
        # descで新しい順に並び替える
        @books = Book.all.order(created_at: 'desc')
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new(title: params[:title])
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            # redirect
            redirect_to books_path
        else
            render 'new'
        end
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to books_path
        else
            render 'edit'
        end
    end

    require 'net/https'
    require 'json'
    require 'uri'

    def search
        if params[:title]
            uri = URI.parse("https://www.googleapis.com/books/v1/volumes?q=#{URI.encode_www_form_component(params[:title])}")
            http = Net::HTTP.new(uri.host, uri.port)
            http.use_ssl = true
            response = http.get(uri.request_uri)
            @result = JSON.parse(response.body)
        end
    end
    

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end

    private
        def book_params
            params.require(:book).permit(:title, :description)
        end
end

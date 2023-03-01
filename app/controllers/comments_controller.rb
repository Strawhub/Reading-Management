class CommentsController < ApplicationController
    def create
        @book = Book.find(params[:book_id])
        @book.comments.create(comment_params)
        redirect_to book_path(@book)
    end

    def destroy
        @book = Book.find(params[:book_id])
        @comment = @book.comments.find(params[:id])
        @comment.destroy
        redirect_to book_path(@book)
    end

    private
        def comment_params
            params.require(:comment).permit(:description)
        end
end

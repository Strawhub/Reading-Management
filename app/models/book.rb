class Book < ApplicationRecord
    has_many :comments, dependent: :destroy
    # @book.comments
    validates :title, presence: true, length: { minimum: 3, message: 'Too short to post!' }
    validates :description, presence: true
end

class Comment < ApplicationRecord
  belongs_to :book
  validates :description, presence: true
end

class Comment < ApplicationRecord
  belongs_to :book
  belongs_to :user, foreign_key: :user_id
  validates :description, presence: true
end

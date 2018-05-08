# The model is responsible for the data of or post and interacting with the database
class Comment < ApplicationRecord
  belongs_to :post
end

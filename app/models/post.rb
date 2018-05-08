# The model is responsible for the data of or post and interacting with the database
class Post < ApplicationRecord
  has_many :comments
end

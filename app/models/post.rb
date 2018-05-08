# The model is responsible for the data of or post and interacting with the database

# Models are Ruby classes. They talk to the database, store, and validate data, perform the business logic and otherwise do the heavy lifting.
class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  # dependent: :destroy means the comments related
  # to the specific post in mention get deleted if the post does
end

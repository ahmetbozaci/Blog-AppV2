class Post < ApplicationRecord
  belongs_to :user, class_name: "User"
  has_many :comments
  has_many :likes
end

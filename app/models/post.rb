class Post < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "author_id"
  has_many :comments, class_name: "comment", foreign_key: "post_id"
  has_many :likes, class_name: "like", foreign_key: "reference_id"
end

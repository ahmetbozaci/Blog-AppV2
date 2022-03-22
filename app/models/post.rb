class Post < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "author_id"
  has_many :comments, class_name: "comment", foreign_key: "post_id"
end

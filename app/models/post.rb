class Post < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "author_id"
end

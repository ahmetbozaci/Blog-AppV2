class User < ApplicationRecord
  has_many :posts, class_name: "post", foreign_key: "author_id"
end

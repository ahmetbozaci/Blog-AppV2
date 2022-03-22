class Comment < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "author_id"
  belongs_to :post, class_name: "post", foreign_key: "post_id"
end

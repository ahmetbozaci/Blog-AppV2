class Like < ApplicationRecord
  belongs_to :post, class_name: "post", foreign_key: "post_id"
end

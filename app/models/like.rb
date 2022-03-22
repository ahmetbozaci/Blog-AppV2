class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user, class_name: "User"
end

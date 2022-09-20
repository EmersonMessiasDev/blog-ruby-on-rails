class Comment < ApplicationRecord
  validates :body, presence:true

  #relacionamento com o post
  belongs_to :post

  # belongs_to :created_by, class_name: "User"
end
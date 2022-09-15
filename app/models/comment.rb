class Comment < ApplicationRecord
  validates :author, :body, presence:true

  #relacionamento com o post
  belongs_to :post
end

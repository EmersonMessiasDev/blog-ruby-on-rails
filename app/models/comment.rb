class Comment < ApplicationRecord
  validates :body, presence:true

  #relacionamento com o post
  belongs_to :post
  

end

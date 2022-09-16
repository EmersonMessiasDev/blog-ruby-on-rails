class Post < ApplicationRecord
    extend FriendlyId

    # validaçoes de campos
    
    validates :title, :body, presence:true

    belongs_to :created_by, class_name: "User"
    
    has_many :comments, dependent: :destroy

    friendly_id :title, use: :slugged
end

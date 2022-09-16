class Post < ApplicationRecord
    # validaçoes de campos
    validates :title, :body, presence:true

    belongs_to :created_by, class_name: "User"
    has_many :comments
end

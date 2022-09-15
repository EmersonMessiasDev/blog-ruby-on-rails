class Post < ApplicationRecord
    # validaçoes de campos
    validates :title, :author, :body, presence:true


    has_many :comments
end

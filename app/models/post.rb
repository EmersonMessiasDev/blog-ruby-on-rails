class Post < ApplicationRecord
    belongs_to :user
    # validaçoes de campos
    validates :title, :body, presence:true


    has_many :comments, dependent: :destroy
end

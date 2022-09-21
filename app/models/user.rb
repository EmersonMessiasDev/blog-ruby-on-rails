class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :confirmable, 
        :database_authenticatable, 
        :registerable,
        :recoverable,
        :rememberable,
        :trackable, 
        :validatable
end

class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverses_of_favorite, class_name: 'favorite'
  has_many :fav_users, through: :reverses_of_favorite, source: :user 
end
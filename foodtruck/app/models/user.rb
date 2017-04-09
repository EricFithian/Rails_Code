class User < ApplicationRecord
  has_many :ratings
  has_many :trucks through: :ratings
  has_many :user_photos
  has_many :orders
  has_many :favorite_dishes
  has_many :dishes through: :favorite_dishes
end

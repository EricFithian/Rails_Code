class Dish < ApplicationRecord
  belongs_to :truck
  has_many :favorite_dishes
  has_many :users through: :favorite_dishes
  has_many :dish_photos
  has_many :ordered_dishes
  has_many :orders through: :ordered_dishes
  has_many :popular_dishes
  has_many :carted_foods through: :popular_dishes
end

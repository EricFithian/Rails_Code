class CartedFood < ApplicationRecord
  has_many :popular_dishes
  has_many :dishes through: :popular_dishes
  belongs_to :user
  belongs_to :truck
  belongs_to :order
end

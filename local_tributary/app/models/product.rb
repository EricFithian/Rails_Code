class Product < ApplicationRecord
  belongs_to :company
  has_many :favorite_products
  has_many :users, through: :favorite_products
  has_many :product_images
  has_many :ordered_products
  has_many :orders, through: :ordered_products
  has_many :popular_products
  has_many :carted_products, through: :popular_products
  has_many :ratings
  has_many :users, through: :ratings
end

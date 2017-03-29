class Recipe < ApplicationRecord
  has_many :orders
  belongs_to :user
  has_many :categories, through: :categorized_recipe
  has_many :carted_products
end

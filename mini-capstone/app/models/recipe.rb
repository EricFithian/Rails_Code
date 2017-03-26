class Recipe < ApplicationRecord
  has_many :orders
  belongs_to :user
  has_many :categories, through: :catgorized_recipe
end

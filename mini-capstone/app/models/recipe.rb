class Recipe < ApplicationRecord
  has_many :orders
  belongs_to :user
  has_many :categories through: :categorized_recipe
end

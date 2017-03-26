class Category < ApplicationRecord
  has_many :recipes, through: :catgorized_recipe
end

class CategorizedRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :category
end

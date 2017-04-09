class CategorizedRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :name, uniqueness: true

end

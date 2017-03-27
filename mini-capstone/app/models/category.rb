class Category < ApplicationRecord
  belongs_to :user
  has_many :recipies through: :categorized_recipe
end

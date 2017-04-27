class PopularProduct < ApplicationRecord
  belongs_to :carted_product
  belongs_to :product 
end

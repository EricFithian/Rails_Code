class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :recipe
  belongs_to :user
end

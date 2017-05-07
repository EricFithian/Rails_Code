class CartedProduct < ApplicationRecord
  has_many :popular_products
  has_many :products, through: :popular_products
  belongs_to :user
  belongs_to :company
  belongs_to :order, optional: true
end

class CartedProduct < ApplicationRecord
  has_many :popular_products
  has_many :products, through: :popular_products
  belongs_to :user
  belongs_to :company
  belongs_to :product
  belongs_to :order, optional: true

  # def calculate_totals
  #   subtotal = 0
  #   carted_products.each do |carted_product|
  #     subtotal += carted_product.product.price * carted_product.quantity
  #   end

  #   tax = subtotal * 0.08875
  #   total = subtotal + tax

  #   update(tax: tax, total: total, subtotal: subtotal)
  # end
end

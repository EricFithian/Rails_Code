class Order < ApplicationRecord
  has_many :ordered_products
  has_many :products, through: :ordered_products
  belongs_to :user
  has_many :carted_products

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

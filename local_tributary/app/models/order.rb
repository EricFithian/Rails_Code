class Order < ApplicationRecord
  has_many :ordered_products
  has_many :products, through: :ordered_products
  belongs_to :user
  has_many :carted_products

  def calculate_totals
    # take all the carted products for this order
    # add up all the tax, total and subtotal amounts
    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
    end

    tax = subtotal * 0.0875
    total = subtotal * 1.0875

    # actually change this instance of order
    update(tax: tax, total: total, subtotal: subtotal)
  end
end

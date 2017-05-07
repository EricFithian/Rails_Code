class AddProductIdToCartedProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :carted_products, :product_id, :integer
  end
end

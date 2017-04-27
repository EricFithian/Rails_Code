class CreatePopularProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :popular_products do |t|
      t.integer :carted_product_id
      t.integer :product_id

      t.timestamps
    end
  end
end

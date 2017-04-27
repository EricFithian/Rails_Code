class CreateOrderedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :ordered_products do |t|
      t.integer :company_id
      t.integer :order_id

      t.timestamps
    end
  end
end

class CreateOrderedDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :ordered_dishes do |t|
      t.integer :dish_id
      t.integer :order_id

      t.timestamps
    end
  end
end

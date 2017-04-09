class CreateCartedFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_foods do |t|
      t.string :user_id
      t.string :truck_id
      t.string :order_id
      t.integer :quantity
      t.string :special_requests
      t.string :status

      t.timestamps
    end
  end
end

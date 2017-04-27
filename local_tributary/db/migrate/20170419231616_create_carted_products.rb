class CreateCartedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.integer :company_id
      t.integer :quantity
      t.integer :order_id
      t.string :special_requests
      t.string :status

      t.timestamps
    end
  end
end

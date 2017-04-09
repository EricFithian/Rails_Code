class CreatePopularDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :popular_dishes do |t|
      t.integer :cart_id
      t.integer :dish_id

      t.timestamps
    end
  end
end

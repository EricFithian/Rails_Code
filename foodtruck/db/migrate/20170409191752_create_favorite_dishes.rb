class CreateFavoriteDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_dishes do |t|
      t.integer :user_id
      t.integer :dish_id

      t.timestamps
    end
  end
end

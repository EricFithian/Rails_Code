class CreateDishPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :dish_photos do |t|
      t.string :dish_id

      t.timestamps
    end
  end
end

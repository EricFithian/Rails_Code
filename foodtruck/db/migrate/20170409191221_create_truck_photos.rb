class CreateTruckPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_photos do |t|
      t.string :truck_id

      t.timestamps
    end
  end
end

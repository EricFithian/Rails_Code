class ChangeFoodtruckidToTruckid < ActiveRecord::Migration[5.0]
  def change
    rename_column :dishes, :foodtruck_id, :truck_id
  end
end

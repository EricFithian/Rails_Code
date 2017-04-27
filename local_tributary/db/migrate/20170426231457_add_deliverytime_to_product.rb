class AddDeliverytimeToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :delivery_time, :integer
  end
end

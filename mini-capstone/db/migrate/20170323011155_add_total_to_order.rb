class AddTotalToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :total, :decimal, precision: 5, scale: 2
  end
end

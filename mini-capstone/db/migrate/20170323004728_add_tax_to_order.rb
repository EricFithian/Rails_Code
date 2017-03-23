class AddTaxToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :tax, :decimal5
    add_column :orders, :tax, :decimal2
  end
end

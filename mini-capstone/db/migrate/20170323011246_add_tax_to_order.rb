class AddTaxToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :tax, :decimal, precision: 5, scale: 2
  end
end

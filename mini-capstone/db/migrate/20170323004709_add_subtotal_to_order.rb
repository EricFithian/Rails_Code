class AddSubtotalToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :subtotal, :decimal5
    add_column :orders, :subtotal, :decimal2
  end
end

class RemoveTotalFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :total, :integer
  end
end

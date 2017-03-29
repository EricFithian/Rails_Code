class ChangeProductidToRecipeid < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_id, :recipe_id
  end
end

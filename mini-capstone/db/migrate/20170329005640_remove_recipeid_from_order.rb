class RemoveRecipeidFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :recipe_id, :integer
  end
end

class ChangeProductIdToRecipeId < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_products, :product_id, :recipe_id
  end
end

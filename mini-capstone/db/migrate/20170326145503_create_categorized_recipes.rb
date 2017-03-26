class CreateCategorizedRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :categorized_recipes do |t|

      t.timestamps
    end
  end
end

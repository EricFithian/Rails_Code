class AddTypesToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :appetizers, :string
    add_column :categories, :snacks, :string
    add_column :categories, :drinks, :string
    add_column :categories, :entrees, :string
    add_column :categories, :desserts, :string
  end
end

class AddColumnWithImages < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :image, :string
  end
end

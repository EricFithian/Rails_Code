class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :tags
      t.decimal :price, precision: 5, scale: 2
      t.integer :company_id

      t.timestamps
    end
  end
end

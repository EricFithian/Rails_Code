class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :cuisine
      t.string :location
      t.string :image_description
      t.string :company_description
      t.string :password_digest
      t.decimal :rating, precision: 5, scale: 1
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end

class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :image_description
      t.string :company_description
      t.string :password_digest
      t.decimal :rating, precision: 2, scale: 1
      t.string :email
      t.string :phone_number
      t.integer :deliver_radius
      t.string :website
      t.integer :total_locations

      t.timestamps
    end
  end
end

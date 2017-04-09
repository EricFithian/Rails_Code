class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :age
      t.string :address
      t.integer :zip
      t.string :phone_number

      t.timestamps
    end
  end
end

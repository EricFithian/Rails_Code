class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :address
      t.boolean :favorite

      t.timestamps
    end
  end
end

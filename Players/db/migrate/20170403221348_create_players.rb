class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :phone_number
      t.integer :average
      t.integer :salary

      t.timestamps
    end
  end
end

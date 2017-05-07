class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.datetime :deadline
      t.boolean :complete
      t.integer :duration
      t.boolean :favorite

      t.timestamps
    end
  end
end

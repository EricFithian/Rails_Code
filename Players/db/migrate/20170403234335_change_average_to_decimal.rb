class ChangeAverageToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :players, :average, :decimal, precision: 5, scale: 3
  end
end

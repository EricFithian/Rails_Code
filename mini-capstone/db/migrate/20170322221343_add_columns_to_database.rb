class AddColumnsToDatabase < ActiveRecord::Migration[5.0]
  def change
    add_column :name, :email, :password_digest
  end
end

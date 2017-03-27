class DeleteFavoriteColumnFromContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :favorite, :boolean
  end
end

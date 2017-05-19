class AddAdminToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :admin, :boolean
  end
end

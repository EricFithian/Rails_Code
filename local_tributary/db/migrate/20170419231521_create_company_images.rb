class CreateCompanyImages < ActiveRecord::Migration[5.0]
  def change
    create_table :company_images do |t|
      t.integer :company_id

      t.timestamps
    end
  end
end

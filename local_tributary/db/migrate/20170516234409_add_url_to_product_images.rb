class AddUrlToProductImages < ActiveRecord::Migration[5.0]
  def change
    add_column :product_images, :url, :string
  end
end

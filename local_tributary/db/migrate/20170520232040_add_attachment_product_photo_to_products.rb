class AddAttachmentProductPhotoToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :product
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :products, :product
    remove_attachment :products, :photo
  end
end

class AddAttachmentImageToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :image
      t.integer :landing_page_id
    end
  end

  def self.down
    drop_attached_file :assets, :image
    drop_integer
  end
end

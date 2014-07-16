class AddAttachmentPhotoToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :photo
      t.integer :landing_page_id
    end
  end

  def self.down
    drop_attached_file :image, :photo
    remove_column :images, :landing_page_id
  end
end

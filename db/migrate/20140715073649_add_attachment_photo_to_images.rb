class AddAttachmentPhotoToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.string :name
      t.string :description
      t.string :link
      t.attachment :photo
      t.integer :landing_page_id
    end
  end

  def self.down
    remove_column :images, :name
    remove_column :images, :description
    remove_column :images, :link
    drop_attached_file :images, :photo
    remove_column :images, :landing_page_id
  end
end

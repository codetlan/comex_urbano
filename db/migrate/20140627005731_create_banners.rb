class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :name
      t.string :description
      t.integer :active
      t.attachment :photo
      t.integer :landing_page_id

      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :description
      t.string :link
      t.attachment :photo
      t.integer :landing_page_id
      t.timestamps
    end
  end
end

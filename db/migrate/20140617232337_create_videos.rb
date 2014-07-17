class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :content
      t.string :link
      t.integer :visit
      t.integer :active

      t.timestamps
    end
  end
end

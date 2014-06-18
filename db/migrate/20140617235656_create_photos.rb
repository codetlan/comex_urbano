class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :description
      t.integer :visit
      t.integer :active

      t.timestamps
    end
  end
end

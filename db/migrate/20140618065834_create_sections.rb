class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.integer :active

      t.timestamps
    end
  end
end

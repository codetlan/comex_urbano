class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.text :description
      t.string :title
      t.integer :active

      t.timestamps
    end
  end
end

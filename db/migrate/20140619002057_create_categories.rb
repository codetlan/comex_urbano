class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :link
      t.integer :position
      t.integer :active

      t.timestamps
    end
  end
end

class AddCategoryIdToSections < ActiveRecord::Migration
  def up
    add_column :sections, :category_id, :integer
  end

  def down
    remove_column :sections, :category_id
  end
end

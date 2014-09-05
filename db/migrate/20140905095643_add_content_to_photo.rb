class AddContentToPhoto < ActiveRecord::Migration
  def up
    add_column :photos, :content, :text
    change_column :photos, :description, :string
  end

  def down
    remove_column :photos, :content
    change_column :photos, :description, :text
  end
end

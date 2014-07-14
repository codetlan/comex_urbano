class AddSectionIdToPhotos < ActiveRecord::Migration
  def up
    add_column :photos, :section_id, :integer
    add_column :photos, :posted_at, :date
  end

  def down
    remove_column :photos, :section_id
    remove_column :photos, :posted_at
  end
end

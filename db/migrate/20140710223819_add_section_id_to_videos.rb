class AddSectionIdToVideos < ActiveRecord::Migration
  def up
    add_column :videos, :section_id, :integer
    add_column :videos, :posted_at, :date
  end

  def down
    remove_column :videos, :section_id
    remove_column :videos, :posted_at
  end
end

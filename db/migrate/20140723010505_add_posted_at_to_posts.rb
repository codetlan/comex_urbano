class AddPostedAtToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :section_id, :integer
    add_column :posts, :posted_at, :date
  end

  def down
    remove_column :posts, :section_id
    remove_column :posts, :posted_at
  end
end

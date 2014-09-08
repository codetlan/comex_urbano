class AddLinkToBanner < ActiveRecord::Migration
  def up
    add_column :banners, :link, :string
    add_column :banners, :position, :integer
    add_column :banners, :orden, :integer
  end

  def down
    remove_column :banners, :link
    remove_column :banners, :position
    remove_column :banners, :orden
  end
end

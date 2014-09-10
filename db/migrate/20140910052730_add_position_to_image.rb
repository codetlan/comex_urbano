class AddPositionToImage < ActiveRecord::Migration
  def up
    add_column :images, :position, :integer
  end

  def down
    remove_column :images, :position
  end
end

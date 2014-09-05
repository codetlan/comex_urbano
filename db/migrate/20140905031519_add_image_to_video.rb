class AddImageToVideo < ActiveRecord::Migration
  def up
    add_column :videos, :image, :string
  end

  def down
    remove_column :videos, :image
  end
end

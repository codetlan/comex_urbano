class AddBannerToSection < ActiveRecord::Migration
  def self.up
    add_attachment :sections, :main_banner
    add_attachment :sections, :secondary_banner
  end

  def self.down
    remove_attachment :sections, :main_banner
    remove_attachment :sections, :secondary_banner
  end
end

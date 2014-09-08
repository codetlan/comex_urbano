class AddPrivacityToLandingPage < ActiveRecord::Migration
  def up
    add_column :landing_pages, :privacity, :string
    add_column :landing_pages, :contact, :string
  end

  def down
    remove_column :landing_pages, :privacity
    remove_column :landing_pages, :contact
  end
end

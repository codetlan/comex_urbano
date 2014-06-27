class CreateLandingPages < ActiveRecord::Migration
  def change
    create_table :landing_pages do |t|
      t.string :facebook
      t.string :twitter
      t.string :youtube
      t.string :vimeo
      t.string :copyright
      t.string :terms

      t.timestamps
    end
  end
end

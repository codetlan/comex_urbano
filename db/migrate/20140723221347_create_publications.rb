class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.text :content
      t.integer :published_id
      t.string :published_type

      t.timestamps
    end
  end
end

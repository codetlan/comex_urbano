class CreateContact < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :subject
      t.text :message
    end
  end
end

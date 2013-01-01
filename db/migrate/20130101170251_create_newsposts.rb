class CreateNewsposts < ActiveRecord::Migration
  def change
    create_table :newsposts do |t|
      t.integer :user_id
      t.string :portal_id
      t.string :title
      t.string :slug
      t.string :body
      t.integer :views
      t.timestamps
    end
  end
end

class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :user_id
      t.string :portal_id
      t.string :title
      t.string :slug
      t.string :body
      t.integer :pagegroup_id, :default => 0
      t.integer :parentpage, :default => 0
      t.integer :views
      t.timestamps
    end
  end
end

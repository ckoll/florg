class CreatePagegroups < ActiveRecord::Migration
  def change
    create_table :pagegroups do |t|
      t.integer :portal_id #optional
      t.string :user_id #optional
      t.string :title #not shown on site, for user's use only
      t.string :slug
      t.timestamps
    end
  end
end

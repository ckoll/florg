class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :filename
      t.string :filepath
      t.string :slug
      t.integer :uploadedby
      t.integer :portal_id
      t.integer :source
      t.integer :views
      t.integer :heart_count
      t.timestamps
    end
  end
end

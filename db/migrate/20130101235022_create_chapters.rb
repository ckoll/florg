class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :user_id
      t.integer :portal_id
      t.integer :story_id
      t.integer :chapternum
      t.string :body
      t.string :title
      t.string :heart_count
      t.timestamps
    end
  end
end

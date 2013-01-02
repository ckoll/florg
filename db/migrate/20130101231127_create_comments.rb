class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :user_id
      t.integer :portal_id
      t.integer :commentable_id
      t.string :commentable_type
      t.integer :emoticon
      t.integer :comment_count
      t.timestamps
    end
    
    add_index :comments, [:commentable_id, :commentable_type]
  end
end

class CreateCommentcomments < ActiveRecord::Migration
  def change
    create_table :commentcomments do |t|
      t.integer :comment_id
      t.string :body
      t.integer :user_id
      t.integer :portal_id
      t.integer :emoticon
      t.timestamps
    end
  end
end

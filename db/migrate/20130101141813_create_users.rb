class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :pass
      t.string  :password_digest
      t.string  :remember_token
      t.string :email
      t.boolean :confirmed,     :default=>false
      t.datetime :lastvisit
      t.string :profilepic
      t.string :profile
      t.integer :portals_count
      t.integer :photos_count
      t.integer :videos_count
      t.integer :pages_count
      t.integer :comments_count
      t.integer :pollanswers_count
      t.integer :pollquestions_count
      t.timestamps
    end
    add_index "users", ["email"], :name => "index_users_on_email", :unique => true
    add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  end
end

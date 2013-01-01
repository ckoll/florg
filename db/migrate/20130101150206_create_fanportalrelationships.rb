class CreateFanportalrelationships < ActiveRecord::Migration
  def change
    create_table :fanportalrelationships do |t|
      t.integer :portal_id
      t.integer :user_id
      t.string :usertype #fan|moderator|admin
      t.timestamps
    end
    
    add_index "fanportalrelationships", ["portal_id"], :name => "index_fanportalrelationships_on_portal_id" #allows portal1.users
    add_index "fanportalrelationships", ["user_id", "portal_id"], :name => "index_fanportalrelationships_on_user_id_and_portal_id", :unique => true #each relationship should be stored only once
    add_index "fanportalrelationships", ["user_id"], :name => "index_fanportalrelationships_on_user_id" #allows user1.portals
  end
end

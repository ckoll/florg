class CreatePortals < ActiveRecord::Migration
  def change
    create_table :portals do |t|
      t.string :founder
      t.datetime :datefounded
      t.string :title
      t.string :header
      t.integer :user_count, :default => 0
      t.timestamps
    end
    
    add_index "portals", ["title"], :name => "index_portals_on_title", :unique => true
    
    #update user_count
    Portal.find(:all).each do |p|
      Portal.update_counters p.id, :tasks_count => p.users.length
    end
    
    
  end
end

class CreatePortals < ActiveRecord::Migration
  def change
    create_table :portals do |t|
      t.string :founder
      t.datetime :datefounded
      t.string :title
      t.string :header
      t.integer :users_count, :default => 0
      t.timestamps
    end
    
    #2do
    #add_index "portals", ["title"], :name => "index_portals_on_title", :unique => true
    
    #update users_count
    Portal.find(:all).each do |p|
      Portal.update_counters p.id, :users_count => p.users.length
    end
    
    
  end
end

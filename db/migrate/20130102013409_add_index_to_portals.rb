class AddIndexToPortals < ActiveRecord::Migration
  def change
  end
  
  add_index "portals", ["title"], :name => "index_portals_on_title", :unique => true
  
  
end

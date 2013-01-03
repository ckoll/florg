class AddIndexToPortals2 < ActiveRecord::Migration
  def change
  end
  add_index "portals", ["slug"], :name => "index_portals_on_slug", :unique => true
end

class ChangeTablePortals < ActiveRecord::Migration
  def change
    change_column :portals, :founder, :integer, :default => 1
  end
end

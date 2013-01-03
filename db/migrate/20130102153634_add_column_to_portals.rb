class AddColumnToPortals < ActiveRecord::Migration
  def change
    add_column :portals, :slug, :string
  end
end

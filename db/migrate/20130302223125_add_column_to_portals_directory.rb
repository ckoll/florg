class AddColumnToPortalsDirectory < ActiveRecord::Migration
  def change
  	add_column :portals, :directory, :string
  end
end

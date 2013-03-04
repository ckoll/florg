class AddColumnToPortalsPopular < ActiveRecord::Migration
  def change
  	add_column :portals, :popular, :string
  end
end

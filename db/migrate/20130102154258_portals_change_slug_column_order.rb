class PortalsChangeSlugColumnOrder < ActiveRecord::Migration
  def change
    change_column :portals, :slug, :string, :after => :title
  end
end

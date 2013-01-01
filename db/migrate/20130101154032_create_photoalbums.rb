class CreatePhotoalbums < ActiveRecord::Migration
  def change
    create_table :photoalbums do |t|
    t.integer :portal_id
    t.string :createdby
    t.string :title
    t.string :slug
    t.description :string
    t.integer :photos_count
    t.integer :order
    t.timestamps
    end    
  end

end

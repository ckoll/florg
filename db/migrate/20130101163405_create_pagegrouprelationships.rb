class CreatePagegrouprelationships < ActiveRecord::Migration
  def change
    create_table :pagegrouprelationships do |t|
      t.integer :page_id
      t.integer :pagegroup_id
      t.integer :pageorder
      t.timestamps
    end
  end
end


#e.g.,
#page1, g1, 1
#page2, g1, 2
#page3, g1, 3
#the hobbit, g1, 0 #if root, display first




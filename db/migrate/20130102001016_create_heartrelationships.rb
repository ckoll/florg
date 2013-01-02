class CreateHeartrelationships < ActiveRecord::Migration
  def change
    create_table :heartrelationships do |t|
      t.integer :user_id
      t.integer :portal_id
      t.integer :heartable_id
      t.string :heartable_type
      t.integer :heartedid
      t.timestamps
    end
  end
end

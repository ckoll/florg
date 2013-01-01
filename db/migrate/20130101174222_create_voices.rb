class CreateVoices < ActiveRecord::Migration
  def change
    create_table :voices do |t|
      t.integer :user_id
      t.integer :portal_id
      t.integer :question
      t.string :image
      t.timestamps
    end
  end
end
